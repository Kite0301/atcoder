使えるコードメモ

・処理速度の計算方法

	start_time = Time.now
	＜処理＞
	p "処理概要 #{Time.now - start_time}s"

・trメソッド

	str.tr(from_str, to_str)
	trメソッドは、文字列の中で引数from_strに並べた文字を引数to_strに並べた文字に置き換え、新しい文字列を返します。
	次の例では、dの字をcに、mの字をrに置き換えています。
	s = "dummy"
	puts s.tr("dm", "cr")

	# 注意
	p "Left".tr("Left","<")
	=> "<<<<"
