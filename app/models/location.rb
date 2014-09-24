class Location < ActiveRecord::Base

	geocoded_by :address #este campo determina la longitud y latitud.
	after_validation :geocode #valida que se llene y luego le da una valor a las columnas longitud y latitud.
	
	belongs_to :station # Una estacion tiene una locacion y una locacion pertenece a una estacion solamente.
	
end