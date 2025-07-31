package test;

public class BookBean 
{
	private String Bid,Bname,Bauthor;
	private Float Bprice;
	private Integer Bqty;
	public BookBean() {}
	public String getBid() {
		return Bid;
	}
	public void setBid(String bid) {
		Bid = bid;
	}
	public String getBname() {
		return Bname;
	}
	public void setBname(String bname) {
		Bname = bname;
	}
	public String getBauthor() {
		return Bauthor;
	}
	public void setBauthor(String bauthor) {
		Bauthor = bauthor;
	}
	public Float getBprice() {
		return Bprice;
	}
	public void setBprice(Float bprice) {
		Bprice = bprice;
	}
	public Integer getBqty() {
		return Bqty;
	}
	public void setBqty(Integer bqty) {
		Bqty = bqty;
	}
	
	

}