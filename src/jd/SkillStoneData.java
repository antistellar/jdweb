package jd;

import java.util.ArrayList;

/**
 * Data transfer object for sending info on a 
 */
public class SkillStoneData
{
  private String name;
  private ArrayList<Formula> creationFormulae;
  private ArrayList<Formula> componentFormulae;
  private String type;
  private int rarity;
  private String effect;
  private int requiredLevel;
  private int mpCost;
  private String weapon;
  private int duration;
  private int range;
  private String thruObstacles;
  private String reversible;
  private String aoe;
  private String description;

  public SkillStoneData()
  {
    creationFormulae = new ArrayList<Formula>(0);
    componentFormulae = new ArrayList<Formula>(0);
  }// ctor

  public void addCreationFormula(Formula cF)
  {
    this.creationFormulae.add(cF);
  }// addCreationFormula

  public void addComponentFormula(Formula cF)
  {
    this.componentFormulae.add(cF);
  }// addComponentFormula

  /**
   * @return the name
   */
  public String getName() {
    return name;
  }

  /**
   * @param name the name to set
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * @return the type
   */
  public String getType() {
    return type;
  }

  /**
   * @param type the type to set
   */
  public void setType(String type) {
    this.type = type;
  }

  /**
   * @return the rarity
   */
  public int getRarity() {
    return rarity;
  }

  /**
   * @param rarity the rarity to set
   */
  public void setRarity(int rarity) {
    this.rarity = rarity;
  }

  /**
   * @return the effect
   */
  public String getEffect() {
    if(this.effect == null)
    {
      return "n/a";
    }// if

    return effect;
  }

  /**
   * @param effect the effect to set
   */
  public void setEffect(String effect) {
    this.effect = effect;
  }

  /**
   * @return the requiredLevel
   */
  public int getRequiredLevel() {
    return requiredLevel;
  }

  /**
   * @param requiredLevel the requiredLevel to set
   */
  public void setRequiredLevel(int requiredLevel) {
    this.requiredLevel = requiredLevel;
  }

  /**
   * @return the mpCost
   */
  public int getMpCost() {
    return mpCost;
  }

  /**
   * @param mpCost the mpCost to set
   */
  public void setMpCost(int mpCost) {
    this.mpCost = mpCost;
  }

  /**
   * @return the weapon
   */
  public String getWeapon() {
    if(this.weapon == null)
    {
      return "n/a";
    }// if

    return weapon;
  }

  /**
   * @param weapon the weapon to set
   */
  public void setWeapon(String weapon) {
    this.weapon = weapon;
  }

  /**
   * @return the duration
   */
  public int getDuration() {
    return duration;
  }

  /**
   * @param duration the duration to set
   */
  public void setDuration(int duration) {
    this.duration = duration;
  }

  /**
   * @return the range
   */
  public int getRange() {
    return range;
  }

  /**
   * @param range the range to set
   */
  public void setRange(int range) {
    this.range = range;
  }

  /**
   * @return the thruObstacles
   */
  public String getThruObstacles() {
    if(this.thruObstacles == null)
    {
      return "n/a";
    }//if

    return thruObstacles;
  }

  /**
   * @param thruObstacles the thruObstacles to set
   */
  public void setThruObstacles(String thruObstacles) {
    this.thruObstacles = thruObstacles;
  }

  /**
   * @return the reversible
   */
  public String getReversible() {
    if(this.reversible == null)
    {
      return "n/a";
    }// if
    
    return reversible;
  }

  /**
   * @param reversible the reversible to set
   */
  public void setReversible(String reversible) {
    this.reversible = reversible;
  }

  /**
   * @return the aoe
   */
  public String getAoe() {
    if(this.aoe == null)
    {
      return "n/a";
    }// if

    return aoe;
  }

  /**
   * @param aoe the aoe to set
   */
  public void setAoe(String aoe) {
    this.aoe = aoe;
  }

  /**
   * @return the description
   */
  public String getDescription() {
    return description;
  }

  /**
   * @param description the description to set
   */
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * @return the creationFormulae
   */
  public ArrayList<Formula> getCreationFormulae() {
    return creationFormulae;
  }

  /**
   * @return the componentFormulae
   */
  public ArrayList<Formula> getComponentFormulae() {
    return componentFormulae;
  }
}// SkillStoneData