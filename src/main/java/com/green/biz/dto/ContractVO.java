package com.green.biz.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ContractVO {
	private int cseq ;
	private int pseq;
	private String id;
	private String price;
	private String ctdate;
	private String pname;
	private String mname ;
}
