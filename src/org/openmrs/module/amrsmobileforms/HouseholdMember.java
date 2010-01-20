package org.openmrs.module.amrsmobileforms;

/**
 * Implements a link of persons and the household that they belong to.
 * 
 * @author Samuel Mbugua
 */
public class HouseholdMember {
	private Integer householdMemberId;
	private Household household;
	
	/**
	 * @return the householdMemberId
	 */
	public Integer getHouseholdMemberId() {
		return householdMemberId;
	}
	/**
	 * @param householdMemberId the householdMemberId to set
	 */
	public void setHouseholdMemberId(Integer householdMemberId) {
		this.householdMemberId = householdMemberId;
	}
	/**
	 * @return the household
	 */
	public Household getHousehold() {
		return household;
	}
	/**
	 * @param household the household to set
	 */
	public void setHousehold(Household household) {
		this.household = household;
	}
}
