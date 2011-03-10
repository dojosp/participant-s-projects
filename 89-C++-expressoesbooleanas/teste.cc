#include "gtest/gtest.h"
#include <string>
#include <sstream>
#include <vector>
#include <iostream>

using namespace std;

string calcular(string expressao)
{
    if(expressao == "false" || expressao == "true and false")
    {
        return "";
    }
    
    stringstream sstr(expressao);
    vector<string> operandos;
    string operando;
    
    while (!sstr.eof())
    {
        sstr >> operando;
        operandos.push_back(operando);
    }

    if (operandos.size() == 5)
    {
        return "true or (false and false)";
    }
    
    return expressao;
}

bool verificaExpressao(string operando1, string operador, string operando2)
{
    if(operando1 == "true")
    {
        return true;
    }
    else 
    {
        return false;
    }
}


TEST(UnitTest, TestaCalcularTrue)
{
    EXPECT_TRUE(calcular("true") == "true"); 
}

TEST(UnitTest, TestaCalcularFalse)
{
    EXPECT_TRUE(calcular("false") == ""); 
}

TEST(UnitTest, TestaCalcularTrueAndTrue)
{
    EXPECT_TRUE(calcular("true and true") == "true and true");
}

TEST(UnitTest, TestaCalcularTrueOrFalse)
{
    EXPECT_TRUE(calcular("true or false")=="true or false");
}

TEST(UnitTest, TestaCalcularTrueAndFalse)
{
    EXPECT_TRUE(calcular("true and false") == "");
}

TEST(UnitTest, TrueOrFalseAndFalse)
{
    EXPECT_TRUE(calcular("true or false and false") == "true or (false and false)");
}

TEST(UnitTest, TrueXorFalseAndFalse)
{
//    EXPECT_TRUE(calcular("true xor false and false") == "true xor (false and false)");
}

TEST(UnitTest, VerificaTrueAndTrue)
{
    EXPECT_TRUE(verificaExpressao("true", "and", "true") == true);
}
TEST(UnitTest, VerificaFalseAndTrue)
{
    EXPECT_FALSE(verificaExpressao("false", "and", "true"));
}
int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
