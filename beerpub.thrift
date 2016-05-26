enum BeerBrand
{
    IPA,
    Urpiner,
    Pilsner
}

enum BeerDegree
{
    d10,
    d11,
    d12
}

struct Beer
{
    1: required BeerBrand brand;
    2: optional BeerDegree degree;
    3: required i32 amountInDcl = 5;
}

service BeerPub
{
    void order(1: required i32 table, 2: required list<Beer> beers);
    i32 getPrice(1: required i32 table);
}
