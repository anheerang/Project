package com.green.biz.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {
	private int pseq ;
	private String name;
	private String buyKind;
	private String homeKind;
	private String roomKind;
	private String price;
	private String address;
	private int area ;
	private String content;
	private String image1;
	private String image2;
	private String image3;
	private String likeyn;
	private String bestyn;
	private String contractResult;
	private Timestamp regdate;
}
