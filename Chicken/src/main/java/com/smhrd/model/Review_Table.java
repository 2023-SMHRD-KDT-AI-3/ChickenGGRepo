package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Review_Table {
	int review_num;
	String id;
	int menu_num;
	String review_content;
	String nick;
}
