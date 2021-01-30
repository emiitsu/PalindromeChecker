public void setup()
{
   String[] lines = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A canal! Panama!"};
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = word.toLowerCase();
  word = noSpaces(word);
  word = onlyLetters(word);
  if(reverse(word).equals(word))
    return true;
  return false;
}
public String reverse(String str)
{
  String s = "";
  for(int i = str.length()-1; i>=0; i--)
  {
     s = s + str.substring(i,i+1);
  }
  return s;
}
public String noSpaces(String str){
  String s = "";
  for(int i=0; i<str.length(); i++) 
  {
    if(Character.isLetter(str.charAt(i)))
    {
      s = s + str.substring(i, i+1);
    }
  }
  return s;
}
public String onlyLetters(String str){
  String s = "";
  for(int i=0; i<str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i))){
      s = s + str.substring(i, i+1);
    }
  }
  return s;
}
