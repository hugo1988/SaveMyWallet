package es.savemywallet.com.daos;

import java.util.List;


import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import es.savemywallet.com.beans.Wallet;
import es.savemywallet.com.interfaces.IWalletDAO;
import es.savemywallet.com.mappers.WalletMapper;

public class WalletDAO implements IWalletDAO {
	
	/**
	 * Properties
	 */
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	/**
	 * Setter
	 * @param dataSource
	 */
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	
	/**
	 * Method find by primary id_wallet
	 */
	@Override
	public Wallet findByPrimaryId(int idWallet) {
		Wallet auxWallet = null;
		try{
			String SQL = "SELECT * FROM wallets WHERE id_wallet = ?";
			auxWallet = jdbcTemplateObject.queryForObject(SQL, new Object[]{idWallet}, new WalletMapper());
		}catch(Exception e){
			System.out.println(e);
		}
		return auxWallet;
	}

	/**
	 * Method add wallet
	 */
	@Override
	public void add(Wallet wallet) {
		String SQL = "INSERT INTO wallets (id_wallet, id_user, name_wallet, description) VALUES (?,?,?,?)";
		try{
			jdbcTemplateObject.update(SQL, wallet.getIdWallet(), wallet.getIdUser(), wallet.getNameWallet(), wallet.getDescription());
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	/**
	 * Method delete id_wallet
	 */
	@Override
	public void delete(int idWallet) {
		String SQL = "DELETE FROM wallets WHERE id_wallet = ?";
		try{
			jdbcTemplateObject.update(SQL, idWallet);
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	/**
	 * Method update wallet
	 */
	@Override
	public void update(Wallet wallet) {
		String SQL = "UPDATE wallets SET id_user = ?, name_wallet = ?, description = ? WHERE id_wallet = ?";
		try{
			jdbcTemplateObject.update(SQL, wallet.getIdWallet(), wallet.getDescription());
		}catch(Exception e){			
			System.out.println(e);
		}
		
	}
	
	/**
	 * Method list wallets
	 */
	@Override
	public List<Wallet> list(int idUser) {
		String SQL = "SELECT * FROM wallets where id_user = ?";
		List<Wallet> listWallet = null;
		try{
			listWallet = jdbcTemplateObject.query(SQL, new Object[]{idUser},new WalletMapper());
		}catch(Exception e){
			System.out.println(e);
		}
		return listWallet;
	}

}
