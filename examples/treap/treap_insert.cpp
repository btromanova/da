#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;

struct node 
{
  int key;
  int priority;
  node *l, *r;
  node(int key, int priority): key(key), priority(priority), l(0), r(0) {}
};

typedef node* tree;

void split(tree t, int key, tree *l, tree *r)
{
  if (!t)
    *r = *l = 0;
  else if (key > t->key) {
    split(t->r, key, &t->r, r); 
    *l = t;
  }
  else {
    split(t->l, key, l, &t->l); 
    *r = t;
  }
}

void insert(tree *t, int key, int p)
{
  node *nd = new node(key, p);
  if (!*t)
   *t = nd;
  else {
    if ((*t)->priority < nd->priority) {
      split(*t, key, &nd->l, &nd->r);
      *t = nd;
    }
    else
      insert(key < (*t)->key ? &(*t)->l : &(*t)->r, key, p);
  }
}

void print(tree t, string offset)
{
  if (!t)
    return;
  if (t->l)
    print(t->l, offset + "  ");
  cout << offset << t->key << " " << t->priority << std::endl;
  if (t->r)
    print(t->r, offset + "  ");
}

int main()
{
  tree t = 0; 
  srandom(time(0));
  for (int i = 0; i != 10; ++i)
    insert(&t, i, random());
 // insert(&t, 1);
  print(t, "");
}
