package com.mycompany.Blue_ATM;

/**
 *
 * @author Óscar Poblete Sáenz & Julieta Rojas García
 */

public class Users{

	private static String client_name; //keep the same value across all instances
	private static String account_id;
	private static String card_id;
	private static String card_type;
        private static boolean account_status;
        
public Users(){
    
}

public void setClientName(String client_name){

	this.client_name=client_name;

}

public String getClientName(){

	return client_name;

}

public void setAccountID(String account_id){

	this.account_id=account_id;

}

public String getAccountID(){

	return account_id;

}

public void setAccountStatus(boolean account_status){

	this.account_status=account_status;

}

public boolean getAccountStatus(){

	return account_status;

}

public void setCardID(String card_id){

	this.card_id=card_id;

}

public String getCardID(){

	return card_id;

}


public void setCardType(String card_type){

	this.card_type=card_type;

}

public String getCardType(){

	return card_type;

}


}
