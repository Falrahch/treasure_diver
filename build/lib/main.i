# 1 "source\\main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "source\\main.c"




# 1 "source\\/game.h" 1




       



int game();
# 6 "source\\main.c" 2
# 15 "source\\main.c"
int main(void)
{

 int error_code;


 do
 {
  error_code = game();
 }
 while (error_code == 0);





 return error_code;
}
