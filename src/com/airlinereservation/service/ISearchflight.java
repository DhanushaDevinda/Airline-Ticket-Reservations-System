package com.airlinereservation.service;

import java.util.ArrayList;

import com.airlinereservation.model.Searchflight;



public interface ISearchflight {
	
	public void addSearchflight(Searchflight searchflight);

	public Searchflight updateSearchflight(Searchflight searchflight);

	public ArrayList<Searchflight> getSearchflight(String nic);

	void deleteSearchflight(String email);
}
