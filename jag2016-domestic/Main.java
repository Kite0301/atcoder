import java.util.*;
class Main{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    // 整数の入力
    int a = sc.nextInt();
    // スペース区切りの整数の入力
    int b = sc.nextInt();
    int c = sc.nextInt();
    // 文字列の入力
    String s = sc.next();
    // 出力
    System.out.println((a+b+c) + " " + s);
  }
}

// import java.util.*;
class a {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int f = 0;
    String x = "YES";
    int n = sc.nextInt();
    for (int i=0;i<n;i++) {
      String t = sc.next();
      if (t.equals("A")) {
        f++;
      } else {
        f--;
        if (f<0) {
          x = "NO";
        }
      }
    }
    if (f!=0) {
      x = "NO";
    }
    System.out.println(x);
  }
}

// import java.util.*;class a{public static void main(String[] args){Scanner sc=new Scanner(System.in);int f=0;String x="YES";int n=sc.nextInt();for(int i=0;i<n;i++){String t=sc.next();if(t.equals("A")){f++;}else{f--;if(f<0){x="NO";}}}if(f!=0){x="NO";}System.out.println(x);}}
