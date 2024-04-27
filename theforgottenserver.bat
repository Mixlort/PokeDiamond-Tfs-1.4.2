if exist theforgottenserver-x64.exe (
    del theforgottenserver-x64.exe
    cd vc17\x64\Release
    copy theforgottenserver-x64.exe ..\..\..
    cd ..\..\..
    start theforgottenserver-x64.exe
) else (
    cd vc17\x64\Release
    copy theforgottenserver-x64.exe ..\..\..
    cd ..\..\..
    start theforgottenserver-x64.exe
)
