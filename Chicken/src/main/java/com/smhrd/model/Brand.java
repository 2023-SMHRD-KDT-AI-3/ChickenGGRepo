package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Brand {
	String brand_name;
	int min_price;
	int avg_price;
	String boneless;
}
