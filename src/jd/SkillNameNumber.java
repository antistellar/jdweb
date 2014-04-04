package jd;

/**
 * very simple dto to give to the main page when listing all stones
 */
public class SkillNameNumber implements Comparable<SkillNameNumber>
{
  int number;
  String name;

  public SkillNameNumber(int nu, String na)
  {
    this.number = nu;
    this.name = na;
  }// ctor

  public int getNumber() 
  {
    return this.number;
  }
  
  public String getName() 
  {
    return this.name;
  }

  public int compareTo(SkillNameNumber other)
  {
    return this.name.compareTo(other.getName());
  }// compareTo
}// SkillNameNumber