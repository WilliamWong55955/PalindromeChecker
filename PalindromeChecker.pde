public void setup()
{
  String lines[] = new String[]{"test","rotator","rewriter","nurses","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!","taco cat"};
  //loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
    String s = ""; 
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i))==true)
    s = s + word.substring(i,i+1);
  }
  String wilbert = s.toLowerCase();
  if(reverse(wilbert).equals(wilbert))
  return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
      for(int i = str.length(); i > 0; i--){
    sNew = sNew + str.substring(i-1,i);
  }
    return sNew;
}
public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}


