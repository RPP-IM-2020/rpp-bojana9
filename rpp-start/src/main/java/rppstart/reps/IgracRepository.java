package rppstart.reps;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;

import rppstart.jpa.Igrac;
import rppstart.jpa.Tim;

public interface IgracRepository extends JpaRepository <Igrac, Integer>{
	
	Collection <Igrac> findByTim (Tim t);
	Collection <Igrac> findByBrojRegContainingIgnoreCase (String brojReg);


}
