package com.capstone.cyberplace.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.capstone.cyberplace.model.Place;

@Repository
public interface PlaceRepository extends JpaRepository<Place, Integer> {

	// get top 6
	@Query(value = "SELECT TOP(6) * from Place where status_place_id =1  ORDER BY counter_view DESC ", nativeQuery = true) // jpql
	List<Place> getTop6();

	// get all
	@Query(value = "SELECT  * from Place where status_place_id =1  ORDER BY counter_view DESC ", nativeQuery = true) // jpql
	List<Place> getAll();

	// find by place id
	@Query(value = "SELECT  * from Place where place_id = :place_id AND status_place_id = 1", nativeQuery = true) // jpql
	Place getOneByID(@Param("place_id") int place_id);

	// searchUltimate
	@Modifying
	@Query(value = "EXEC searchUltimate @title= :title , @districtID =:districtID "
			+ ", @roleID =:roleID , @mina =:mina , @maxa =:maxa , @minp =:minp , @maxp =:maxp ", nativeQuery = true) // jpql
	List<Place> listSearchPlace(@Param("title") String title, @Param("districtID") int districtID,
			@Param("roleID") int roleID, @Param("mina") float mina, @Param("maxa") float maxa,
			@Param("minp") float minp, @Param("maxp") float maxp);

	// check Status place

	@Query(value = "SELECT * FROM Place where place_id =:place_id  ", nativeQuery = true) // jpql
	Place getPlaceByPlaceIDAndStatusID(@Param("place_id") int placeID);

}
