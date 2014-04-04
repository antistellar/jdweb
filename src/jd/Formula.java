package jd;

/**
 * simple dto containing the 3 skill name number objects that define a 
 * skillbinding formula
 */
public class Formula
{
  private SkillNameNumber item1;
  private SkillNameNumber item2;
  private SkillNameNumber item3;

  public Formula(SkillNameNumber i1, SkillNameNumber i2, SkillNameNumber i3)
  {
    this.item1 = i1;
    this.item2 = i2;
    this.item3 = i3;
  }// ctor
  
  public SkillNameNumber getItem1()
  {
    return this.item1;
  }// getItem1

  public SkillNameNumber getItem2()
  {
    return this.item2;
  }// getItem2

  public SkillNameNumber getItem3()
  {
    return this.item3;
  }// getItem3
}// Formula