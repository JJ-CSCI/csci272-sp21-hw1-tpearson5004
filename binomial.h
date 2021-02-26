class Binomial{
    float coeff1;
    float coeff2;
    int exp1;
    int exp2;
public:
    Binomial(float c1=1.0, float c2=1.0, int p1=1,int p2=1);
    float GetCoefficient(int index);
    int GetPower(int index);
    int SetPower(int index, int value);
    int Add(Binomial &B);
    void Multiply(float num);
    void Multiply(float monoCoeff,int monoPow);
};