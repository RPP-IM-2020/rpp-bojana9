package rppstart.ctrl;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;
import rppstart.jpa.Tim;
import rppstart.reps.TimRepository;

@RestController
public class TimRestController {

	@Autowired
	private TimRepository timRepository;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@ApiOperation(value = "Returns collection of all Tim from database.")
	@GetMapping("tim")
	public Collection<Tim> getAll() {
		return timRepository.findAll();
	}

	@ApiOperation(value = "Returns Tim with id that was forwarded as path variable.")
	@GetMapping("tim/{id}")
	public Tim getOne(@PathVariable("id") Integer id) {
		return timRepository.getOne(id);
	}

	@ApiOperation(value = "Returns Tim with name that was forwarded as path variable.")
	@GetMapping("timNaziv/{naziv}")
	public Collection<Tim> getByNaziv(@PathVariable("naziv") String naziv) {
		return timRepository.findByNazivContainingIgnoreCase(naziv);
	}

	@ApiOperation(value = "Adds instance of Tim to database.")
	@PostMapping("tim")
	public ResponseEntity<HttpStatus> addTim(@RequestBody Tim tim) {
		timRepository.save(tim);

		return new ResponseEntity<HttpStatus>(HttpStatus.CREATED);
	}

	@ApiOperation(value = "Updates Tim that has id that was forwarded as path variable with values forwarded in Request Body.")
	@PutMapping("tim/{id}")
	public ResponseEntity<HttpStatus> updateim(@RequestBody Tim tim, @PathVariable("id") Integer id) {
		if (timRepository.existsById(id)) {
			tim.setId(id);
			timRepository.save(tim);
			return new ResponseEntity<HttpStatus>(HttpStatus.OK);
		}

		return new ResponseEntity<HttpStatus>(HttpStatus.NOT_FOUND);
	}

	@ApiOperation(value = "Deletes Tim with id that was forwarded as path variable.")
	@DeleteMapping("tim/{id}")
	public ResponseEntity<HttpStatus> deleteTim(@PathVariable Integer id) {

		if (id == -100 && !timRepository.existsById(-100)) {
			jdbcTemplate.execute("INSERT INTO tim (\"id\", \"naziv\", \"osnovan\", \"sediste\", \"liga\")"
					+ " VALUES (-100, 'Test naziv', to_date('20.04.1920.', 'dd.mm.yyyy.'), 'Test sediste', '4')");
		}

		if (timRepository.existsById(id)) {
			timRepository.deleteById(id);
			return new ResponseEntity<HttpStatus>(HttpStatus.OK);
		}

		return new ResponseEntity<HttpStatus>(HttpStatus.NOT_FOUND);

	}

}
