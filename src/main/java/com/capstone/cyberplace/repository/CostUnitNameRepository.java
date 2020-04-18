package com.capstone.cyberplace.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.capstone.cyberplace.model.CostUnitName;

@Repository
public interface CostUnitNameRepository extends JpaRepository<CostUnitName, Integer>{
	
	
	@Query(value = "SELECT * FROM CostUnitName ", nativeQuery = true) // jpql
	List<CostUnitName> getAllListCostName();

}
