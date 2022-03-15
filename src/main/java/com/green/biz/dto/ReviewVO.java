package com.green.biz.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private int vseq;
	private int pseq;
	private String subject;
	private String id;
	private String content;
	private Timestamp indate;
	private String pname;
	private String mname;
}
