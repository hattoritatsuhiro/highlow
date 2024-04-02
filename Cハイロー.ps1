#$150に「150」を入れる
[int]$150=150
#$jに「1」を入れる
$j=1
#$jが「10」を超えるまで
for($i=1; $i -le 10; $i++)
{
    echo ($j.tostring()+"回目の挑戦")
    #入力受付
    [int]$nyuuryoku=Read-Host
    #$150が$nyuuryoku以上なら
    if($150 -le $nyuuryoku)
    {
        #「空白」を表示
        echo(" ")
        echo("HiGH!")
        #「空白」を表示
        echo(" ")
    }
    #$nyuuryokuが「0」または$nyuuryokuが「5」だったら
    elseif($nyuuryoku -le 0 -or $nyuuryoku -eq 5)
    {
        #何も表示しない
    }
    else
    {
        #「空白」を表示
        echo(" ")
        echo("LOW!")
        echo(" ")
    }
    #$nyuuryokuが0以下だったら
    if($nyuuryoku -le 0)
    {
        [int]$nyuuryoku=Read-Host "再入力してください"
    }
    #$nyuuryokuが「5」だったら
    if($nyuuryoku -eq 5)
    {
        #「空白」を表示
        echo(" ")
        echo("HIT!")
        #「空白」を表示
        echo(" ")
        echo("GAME OVER")
        echo($j.tostring()+"回目で当てられました！！")
        #ループを抜ける
        break
    }
    #$jと10が等しかったら
    if($j -eq 10)
    {
        echo("GAMEOVER")
        echo("当てることができませんでした・・")
        #ループを抜ける
        break
    }
    #$jをインクリメント
    $j++
}