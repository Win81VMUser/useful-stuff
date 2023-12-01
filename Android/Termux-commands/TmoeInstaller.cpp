#include <iostream>
using namespace std;

int main()
{
    int setup;
    string input="Y";
    system("clear");
    cout << "TMOE LINUX INSTALLATION TOOL" << endl;
    cout << "" << endl;
    cout << "If it is your first time please install depences (8)" << endl;
    cout << "Install TMOE (1), Remove TMOE (2) (use the remove option), Run TMOE (3), Run TMOE from curl (4), Install depences (8), About (9), Exit (0)" << endl;
    cout << "" << endl;
    cin >> setup;
    switch(setup)
    {
        case 1:
        {
            system("clear");
            cout << "The installation takes ~300 mb." << endl;
            cout << "Please check your ROM memory status before installation." << endl;
            cout << "Installation might replace Termux's data." << endl;
            cout << "Please follow on-screen instructions." << endl;
            cout << "" << endl;
            cout << "Do you want to install TMOE Linux Manager? (Y/n)" << endl;
            cin >> input;
            if(input=="Y" || input=="y" || input=="yes" || input=="YES" || input=="Yes")
            {
                cout << "Installing TMOE..." << endl;
                system("curl -LO https://l.tmoe.me/2.awk; awk -f 2.awk");
                cout << "" << endl;
                system("clear");
                cout << "It is recommended to install IsolatedModeTMOE script." << endl;
                cout << "Do you want to install the script? (Y/n)" << endl;
                cin >> input;
                if(input=="Y" || input=="y" || input=="yes" || input=="YES" || input=="Yes")
                {
                    cout << "Installing IsolatedModeTMOE.sh..." << endl;
                    system("wget https://raw.githubusercontent.com/Win81VMUser/useful-stuff/main/Android/Termux-commands/IsolatedModeTMOE.sh");
                    system("mv IsolatedModeTMOE.sh isl.sh");
                    system("chmod +x isl.sh");
                    system("bash isl.sh");
                    cout << "Isolated Mode installed." << endl;
                }
                else
                {
                    cout << "Your system may get harmed." << endl;
                    cout << "We'll download the script." << endl;
                    cout << "Downloading IsolatedModeTMOE.sh..." << endl;
                    system("wget https://raw.githubusercontent.com/Win81VMUser/useful-stuff/main/Android/Termux-commands/IsolatedModeTMOE.sh");
                    cout << "" << endl;
                    cout << "" << endl;
                    cout << "" << endl;
                    cout << "Downloaded script to $HOME." << endl;
                    system("mv IsolatedModeTMOE.sh isl.sh");
                    system("chmod +x isl.sh");
                    cout << "Just type './isl.sh' to run it." << endl;
                }
                cout << "Cleaning tempfiles (expect isl.sh)." << endl;
                system("rm 2.awk");
                cout << "Done! Starting TMOE." << endl;
                system("tmoe");
            }
            else
            {
                cout << "Exiting. Please re-run installer." << endl;
            }
            return(0);
        }
        case 2:
        {
            system("clear");
            cout << "Please select 'remove tmoe-manager' option." << endl;
            system("tmoe");
            system("clear");
            cout << "We will delete TMOE folder(-s)." << endl;
            cout << "" << endl;
            cout << "Are you sure you want to continue? (Y/n)" << endl;
            cin >> input;
            if(input=="Y" || input=="y" || input=="yes" || input=="YES" || input=="Yes")
            cout << "Removing directories" << endl;
            else
            cout << "No changes were made to the TMOE dirs." << endl;
            return(0);
        }    
        case 3:
        {
            system("clear");
            cout << "Starting TMOE Manager." << endl;
            system("tmoe");
            return(0);
        }
        case 4:
        {
            system("clear");
            cout << "Downloading and running TMOE." << endl;
            system("curl -LO https://l.tmoe.me/2.awk; awk -f 2.awk");
            return(0);
        }
        case 8:
        {
            system("clear");
            cout << "Installation of depences is REQUIRED to run TMOE and additional setup." << endl;
            cout << "" << endl;
            cout << "Do you want to continue? (Y/n)" << endl;
            cin >> input;
            if(input=="Y" || input=="y" || input=="yes" || input=="YES" || input=="Yes")
            {
                cout << "Installing depences." << endl;
                system("pkg install wget git curl -y");
            }
            else
            {
                cout << "Abort." << endl;
            }
            return(0);
        }
        case 9:
        {
            system("clear");
            cout << "CREDITS:" << endl;
            cout << "" << endl;
            cout << "TMOE Manager by 2moe (github.com/2moe)" << endl;
            cout << "TMOE LINUX INSTALLER by Win8.1VMUser (github.com/win81vmuser)" << endl;
            cout << "IsolatedModeTMOE.sh by Win8.1VMUser (github.com/win81vmuser)" << endl;
            cout << "" << endl;
            cout << "Compiled by SpiceVirtualMachinery Inc." << endl;
            return(0);
        }
        case 0:
        {
            system("clear");
            cout << "Exiting." << endl;
            return(0);
        }
        
        //hello :3
    }
}
