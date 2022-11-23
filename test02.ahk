F1::
ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight, test.png

MsgBox, 이미지 검색을 시작합니다.

if(ErrorLevel = 0)
{
    MouseClick, left, OutputVarX, OutputVarY
}

return