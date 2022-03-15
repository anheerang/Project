package com.green.biz.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RsvVO {
	private int rseq;
	private int pseq;
	private String id;
	private String rvdate;
	private String rvtime;
	private String result;
	private String pname;
	private String mname;
	private String image1;
}
