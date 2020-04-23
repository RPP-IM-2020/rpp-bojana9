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
import rppstart.jpa.Igrac;
import rppstart.jpa.Tim;
import rppstart.reps.IgracRepository;
import rppstart.reps.TimRepository;

@RestController
public class IgracRestController {

	@Autowired
	private IgracRepository igracRepository;

	@Autowired
	private TimRepository timRepository;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@ApiOperation(value = "Returns collection of all Igrac from database.")
	@GetMapping("igrac")
	public Collection<Igrac> getAll() {
		return igracRepository.findAll();
	}

	@ApiOperation(value = "Returns Igrac with id that was forwarded as path variable.")
	@GetMapping("igrac/{id}")
	public Igrac getOne(@PathVariable("id") Integer id) {
		return igracRepository.getOne(id);
	}

	@ApiOperation(value = "Returns collection of Igrac for Tim with id that was forwarded as path variable.")
	@GetMapping("igraciTima/{id}")
	public Collection<Igrac> getAllForTim(@PathVariable("id") Integer id) {
		Tim t = timRepository.getOne(id);
		return igracRepository.findByTim(t);
	}

	@ApiOperation(value = "Returns Igrac with brojReg that was forwarded as path variable.")
	@GetMapping("igracBrojReg/{brojReg}")
	public Collection<Igrac> getByBrojReg(@PathVariable("brojReg") String brojReg) {
		return igracRepository.findByBrojRegContainingIgnoreCase(brojReg);
	}

	@ApiOperation(value = "Adds instance of Igrac to database.")
	@PostMapping("igrac")
	public ResponseEntity<HttpStatus> addOne(@RequestBody Igrac igrac) {
		igracRepository.save(igrac);
		return new ResponseEntity<HttpStatus>(HttpStatus.CREATED);
	}

	@ApiOperation(value = "Updates Igrac that has id that was forwarded as path variable with values forwarded in Request Body.")
	@PutMapping("igrac/{id}")
	public ResponseEntity<HttpStatus> updateOne(@RequestBody Igrac igrac, @PathVariable("id") Integer id) {
		if (!igracRepository.existsById(id)) {
			return new ResponseEntity<HttpStatus>(HttpStatus.NO_CONTENT);
		}
		igrac.setId(id);
		igracRepository.save(igrac);
		return new ResponseEntity<HttpStatus>(HttpStatus.OK);
	}

	@ApiOperation(value = "Deletes Igrac with id that was forwarded as path variable.")
	@DeleteMapping("igrac/{id}")
	public ResponseEntity<HttpStatus> delete(@PathVariable Integer id) {
		if (id == -100 && !igracRepository.existsById(-100)) {

			jdbcTemplate.execute(
					"INSERT INTO igrac (\"id\", \"ime\", \"prezime\", \"broj_reg\", \"datum_rodjenja\", \"nacionalnost\", \"tim\") "
							+ "VALUES ('-100', 'Test ime', 'Test prezime', 'Test registracija', to_date('01.07.1997.', 'dd.mm.yyyy.'), '1', '1')");
		}

		if (igracRepository.existsById(id)) {
			igracRepository.deleteById(id);
			return new ResponseEntity<HttpStatus>(HttpStatus.OK);
		}

		return new ResponseEntity<HttpStatus>(HttpStatus.NO_CONTENT);
	}

}
