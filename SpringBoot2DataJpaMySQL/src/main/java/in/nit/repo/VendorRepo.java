package in.nit.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import in.nit.model.Vendor;

public interface VendorRepo extends JpaRepository<Vendor, Integer>{
	
}


