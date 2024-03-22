package com.shop.entity;

import java.time.LocalDateTime;
import com.shop.constant.ItemSellStatus;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="item")
@Setter
@Getter
@ToString
public class Item {
	@Id
	@Column(name="item_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "itemNm", nullable = false, length=50)
	private String itemNm;
	
	@Column(name = "price", nullable = false)
	private int price;
	@Column(name = "stockNumber", nullable = false)
	private int stockNumber;
	@Column(name = "itemDetail", nullable = false)
	private String itemDetail;
	private ItemSellStatus itemSellStatus;
	private LocalDateTime regTime;
	private LocalDateTime updateTime;
	
}
