public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(noCapitals(noSpaces(noPunct(reverse(lines[i])))))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(word).equals(word))
    return true;
  return false;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String s = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if(!sWord.substring(i,i+1).equals(" "))
      s += sWord.substring(i,i+1);
  }
  return s;
}
public String noPunct(String sWord){
  String s = new String();
  for(int i =0; i<sWord.length(); i++)
    if(Character.isLetter(sWord.charAt(i)) == true)
      s +=sWord.charAt(i);
  //System.out.println(s);
  return s;
}

public String reverse(String sWord){
  String s = new String();
  if (sWord.length()<2)
    return sWord;
  for(int i = sWord.length()-1; i >= 0 ; i--)
  {
    if(!sWord.substring(i,i+1).equals(" "))
      s = s + sWord.substring(i,i+1) ;
  }
  return s;
}



