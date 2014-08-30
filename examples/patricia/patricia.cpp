// Простая реализация PATRICIA
// без ссылок наверх, описанных у Кнута
// Реализованы вставка и поиск
// На ст. вывод пишется какая-то отладочная инфа :)

#include <iostream>
#include <string>
#include <cstdlib>
#include <vector>

using namespace std;

bool getbit(const char *key, int sz, int n)
{
  if (n > sz * 8) 
    return 0;
  return key[n / 8] & (1 << (7 - n % 8));
}

struct node
{
  node(): skip(0), l(0), r(0) {};
  int skip;
  node *l, *r;
};

struct leaf
{
  leaf(int addr): addr(addr) {}
  int addr;
};

struct pat
{
  pat(): root(0) {}
  node *root;
  void insert(string s);
  int search(string s);
  void split(node *x, node *y, int offset, bool is_right);
  void print(node *nd, string s);
  vector<string> keys;
};

int pat::search(string key)
{
  if (!root)
    return -1;
  node *tmp = root->r;
  int skipped = 0; 
  //std::cout << (int)!((long long) tmp & 1) << std::endl;
  while (!((long long)tmp & 1)) {
     skipped += tmp->skip;
     tmp = getbit(key.c_str(), key.size() + 1, skipped) ? tmp->r : tmp->l;
  }
  //std::cout << (long long)tmp << std::endl;
  //std::cout << ((long long)tmp - 1) << std::endl;
  int i = ((leaf*)((long long)tmp - 1))->addr;
  return i;
}

int cpl(const char *x, const char *y)
{
  int i = 0;
  while (x[i] == y[i])
    ++i;
  int j = 0;
  while ((x[i] & (1 << (7 - j))) == (y[i] & (1 << (7 - j))))
      ++j;
  return i * 8 + j;
}

void pat::split(node *x, node *y, int offset, bool is_right)
{
   std::cout << "is root: " <<  (int) (x == root) << endl;
   bool was_left = x->l == y;
   leaf *l = new leaf(keys.size() - 1);
   node *n = new node();
   if (was_left) x->l = n; else { cout << "hl" << endl; x->r = n; }
   n->skip = offset;
   cout << "off: " << offset << endl;
   if (!((long long)y & 1))
     y->skip -= offset;
   if (is_right) {
     n->r = (node*)((long long)l + 1);
     n->l = y;
   }
   else {
     n->l = (node*)((long long)l + 1);
     n->r = y;
     cout << (long)n->l << " " << (long)n->r << endl;
   }
}

void pat::insert(string key)
{
  keys.push_back(key);
  if (!root)
  {
     root = new node();
     leaf *l = new leaf(keys.size() - 1);
   //  std::cout << (long long)l << std::endl;
     root->r = (node*)((long long) l + 1);
   //  std::cout << "+1 " << (long long) root->r << std::endl;
  }
  else {
    int i = search(key);
    if (key == keys[i]) {
      cout << "exists" << endl;
      return;
    }
    int k = cpl(keys[i].c_str(), key.c_str());
    bool is_right = getbit(key.c_str(), key.size() + 1, k);
    int skipped = 0;
    node *prev = root;
    node *tmp = root->r;
    while (!((long long)tmp & 1) && skipped + tmp->skip < k) {
      skipped += tmp->skip;
      prev = tmp;
      tmp = getbit(key.c_str(), key.size() + 1, skipped) ? tmp->r : tmp->l;
    }
    std::cout << "rest: " << k - skipped << " is r: " << is_right << std::endl;
    split(prev, tmp, k - skipped, is_right);
  //std::cout << ((long long)tmp - 1) << std::endl;
  }
}

void pat::print(node *nd, string offset)
{
  if (!nd)
    return;
  if (!((long long)nd & 1)) {
    print(nd->l, offset +  "   ");
    cout << offset << "skip: " << nd->skip  << endl;
    print(nd->r, offset +  "   ");
  }
  else {
    leaf *l = (leaf*)((long long)nd - 1);
   // cout << "leaf: " << l->addr << endl;
    cout << offset << "leaf: " << keys[l->addr] << endl;
  }
}

int main(int argc, char* argv[])
{
//  cout << getbit(argv[1], atoi(argv[2])) << endl;
//  cout << cpl(argv[1], argv[2]) << endl;
  pat t;
  string s;
  while (getline(cin, s)) {
    t.insert(s); 
    //std::cout << t.search(s) << std::endl;
  }
  t.print(t.root, "");
}
