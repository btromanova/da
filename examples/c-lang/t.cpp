class A {
	int f();
	int f(int);
	int f(int, int);
	int f(double);
};

int A::f() { }
int A::f(int) { }
int A::f(int,int) { }
int A::f(double) { }
