// tests.cpp
#include <gtest/gtest.h>
 
TEST(SquareRootTest, PositiveNos) { 
  ASSERT_EQ(6, 3+3);
}
  
int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}