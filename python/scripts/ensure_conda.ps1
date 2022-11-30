$command = "conda"
try {
    & $command --version
    echo "conda Installed"}
Catch {
    if (Test-Path .\Miniconda3-latest-Windows-x86_64.exe)
    {
        echo "miniconda Downloaded"
    } else {
        $source = 'https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe'
        $destination = './Miniconda3-latest-Windows-x86_64.exe'
        Invoke-RestMethod -Uri $source -OutFile $destination
    }
    start /wait "" ./Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=0 /S /D=%UserProfile%\Miniconda3
}
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes

