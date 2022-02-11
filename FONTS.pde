PFont TYPO;
byte SIZE_FONT = 72;
boolean AA_FONT = true;
String[] TYPO_LIST;

// FONT
void FONT()
{
  TYPO_LIST = PFont.list();
  for(int i=0; i<=TYPO_LIST.length; i++)
  {
    TYPO = createFont(TYPO_LIST[0],SIZE_FONT,AA_FONT);
    //println(TYPO_LIST[i]);
  }
}
