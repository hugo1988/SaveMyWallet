package es.savemywallet.com.daos;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import es.savemywallet.com.beans.Concept;
import es.savemywallet.com.beans.User;
import es.savemywallet.com.interfaces.IConceptDAO;
import es.savemywallet.com.utils.ConceptMapper;
import es.savemywallet.com.utils.UserMapper;


public class ConceptDAO implements IConceptDAO {
	
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
	 * Method find by primary id_concept
	 */
	@Override
	public Concept findByPrimaryId(int idConcept) {
		Concept aux = null;
		try{
			String sql = "SELECT * FROM concepts WHERE id_concept = ?";
			aux = jdbcTemplateObject.queryForObject(sql, new Object[] {idConcept}, new ConceptMapper());
		}catch(Exception e){
			e.printStackTrace();
		}
		return aux;
	}

	/**
	 * Method delete concept
	 */
	@Override
	public void delete(int idConcept) {
		String sql = "DELETE FROM concepts WHERE id_concept = ?";
		try{
			jdbcTemplateObject.update(sql, idConcept);
			System.out.println("deleted record with id = " + idConcept);
		}catch (Exception e) {
			System.out.println("excepcion " + e);
		}
	}

	/**
	 * Method add concept
	 */
	@Override
	public void add(Concept concept) {
		String sql = "INSERT INTO users VALUES (?, ?)";
		
		try{
			jdbcTemplateObject.update(sql,concept.getIdConcept(), concept.getNameConcept());
			System.out.println("created record");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Method update concept
	 */
	@Override
	public void update(Concept concept) {
		String sql = "UPDATE concepts SET name_concept= ?, WHERE id_concept=?;";
		try{
			jdbcTemplateObject.update(sql, concept.getNameConcept(), concept.getIdConcept());
			System.out.println("updated record with id = " + concept.getIdConcept());
		}catch (Exception e) {
			System.out.println("excepcion " + e);
		}
	}
	
	/**
	 * Method list concepts
	 */
	@Override
	public List<Concept> list() {
		String sql = "SELECT * FROM concepts";
		List<Concept> listConcepts = null;
		try{
			listConcepts = (List<Concept>)jdbcTemplateObject.query(sql, new ConceptMapper());
		}catch (Exception e) {
			System.out.println("excepcion " + e);
		}
		return listConcepts;
	}
}

	

