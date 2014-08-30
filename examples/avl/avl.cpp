// Реализация avl-дерева
// Была написана при подготовке к лекции
#include <iostream>
#include <string>
#include <cassert>

using namespace std;
struct node
{
  int key;
  node* c[2];
  int h;
  node(int key): key(key), h(1) { c[0] = 0; c[1] = 0; }
};

typedef node* tree;

void height_update(node *nd)
{
  nd->h = max(nd->c[0] ? nd->c[0]->h : 0, nd->c[1] ? nd->c[1]->h : 0) + 1;
}


void rotate(node **nd, bool dir)
{
  assert(*nd != 0);
  assert((*nd)->c[!dir] != 0);
  node *tmp = *nd;
  *nd = (*nd)->c[!dir];
  tmp->c[!dir] = (*nd)->c[dir];
  (*nd)->c[dir] = tmp;
  height_update(tmp);
  height_update(*nd);
}

int height_diff(node *nd, int dir)
{
  return (nd->c[dir] ? nd->c[dir]->h : 0) - (nd->c[!dir] ? nd->c[!dir]->h : 0);
}

void insert(node** t, node *nd)
{
  if (!*t)
    *t = nd;
  else {
    int dir = (*t)->key < nd->key;
    insert(&(*t)->c[dir], nd);
    if (height_diff(*t, dir) == 2) { 
      if (height_diff((*t)->c[dir], dir) == -1)
        rotate(&(*t)->c[dir], dir);
       rotate(t, !dir);
    }
    else
      height_update(*t);
  }
}

node **succ(node **nd)
{
  node **cur = &(*nd)->c[1]; 
  cout << "key: " << (*cur)->key << endl;
  while ((*cur)->c[0])
    cur = &(*cur)->c[0];
  return cur;
}

bool remove(node **t, int key)
{
  if (!*t)
    return false;
  else
    if ((*t)->key == key) {
      if ((*t)->c[0] && (*t)->c[1]) {
        node *tmp = *t;
        cout << "key: " << (*t)->key << endl;
        t = succ(t);
        cout << "key: " << (*t)->key << endl;
        swap((*t)->key, tmp->key);
      }
      node *tmp = *t;
      *t = (*t)->c[0] ? (*t)->c[0] : (*t)->c[1];
      delete tmp;
      if (!(*t))
        return true;
    }
    else
      remove(&(*t)->c[(*t)->key < key], key);
    height_update(*t);
    int hd = height_diff(*t, 1);
    cout << "remove: key: " << (*t)->key << " height difference: " << hd << std::endl;
    if (abs(hd) == 2) { 
      int dir = hd < 0 ? 0 : 1;
      if (height_diff((*t)->c[dir], dir) == -1)
        rotate(&(*t)->c[dir], dir);
       rotate(t, !dir);
    }
    return false;
}

void print(node *t, string offset)
{
  if (t) {
    print(t->c[0], offset + "  ");
    cout << offset << t->key  << ":" << t->h << endl;
    print(t->c[1], offset + "  ");
  }
}

int main()
{
  tree t = 0;
  for (int i = 0; i != 10; ++i) {
    node *nd = new node(i);
    insert(&t, nd);
  }
  print(t, "");
  cout << "-----------" << endl;
  remove(&t, 0);
  print(t, "");
  cout << "-----------" << endl;
  remove(&t, 2);
  print(t, "");
}
