package com.fc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fc.model.Collection;

public interface CollectionMapper {

	void insertCollection(Collection collection);

	List<Collection> listCreatingCollectionByUserId(@Param("userId") Integer userId);

	Collection selectCollectionByCollectionId(@Param("collectionId") Integer collectionId);

	Integer selectUserIdByCollectionId(@Param("collectionId") Integer collectionId);

	List<Collection> listCollectionByCollectionId(List<Integer> idList);

}
