CREATE TABLE customer(customer_id SERIAL PRIMARY KEY,
                      first_name VARCHAR,
                      last_name VARCHAR,
                      customer_address VARCHAR,
                      phone_number VARCHAR);

CREATE TABLE dealership_positions(position_id SERIAL PRIMARY KEY,
                                  position_name VARCHAR,
                                  position_description TEXT);

CREATE TABLE dealership_employees(employee_id SERIAL PRIMARY KEY,
                                  first_name VARCHAR,
                                  last_name VARCHAR,
                                  position_id INTEGER,
                                  FOREIGN KEY (position_id) REFERENCES dealership_positions(position_id));

CREATE TABLE vehicles_in_system(vehicle_id SERIAL PRIMARY KEY,
                                make VARCHAR,
                                model VARCHAR,
                                vehicle_year INTEGER,
                                color VARCHAR);

CREATE TABLE vehicle_inventory(vehicle_id INTEGER,
                               vehicle_price INTEGER,
                               vehicle_sold BOOLEAN,
                               FOREIGN KEY (vehicle_id) REFERENCES vehicles_in_system(vehicle_id));

CREATE TABLE vehicle_sale_invoice(invoice_id SERIAL PRIMARY KEY,
                                  customer_id INTEGER,
                                  vehicle_id INTEGER,
                                  employee_id INTEGER,
                                  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
                                  FOREIGN KEY (vehicle_id) REFERENCES vehicles_in_system(vehicle_id),
                                  FOREIGN KEY (employee_id) REFERENCES dealership_employees(employee_id));

CREATE TABLE vehicles_to_service(customer_id INTEGER,
                                 vehicle_id INTEGER,
                                 FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
                                 FOREIGN KEY (vehicle_id) REFERENCES vehicles_in_system(vehicle_id));

CREATE TABLE vehicle_service_ticket(ticket_id SERIAL PRIMARY KEY,
                                    vehicle_id INTEGER,
                                    employee_id INTEGER,
                                    FOREIGN KEY (vehicle_id) REFERENCES vehicles_in_system(vehicle_id),
                                    FOREIGN KEY (employee_id) REFERENCES dealership_employees(employee_id));

CREATE TABLE available_services(service_id SERIAL PRIMARY KEY,
                                service_alias VARCHAR,
                                service_description TEXT,
                                service_price DECIMAL(6,2));

CREATE TABLE rendered_services(ticket_id INTEGER,
                               service_id INTEGER,
                               employee_id INTEGER,
                               FOREIGN KEY (ticket_id) REFERENCES vehicle_service_ticket(ticket_id),
                               FOREIGN KEY (service_id) REFERENCES available_services(service_id),
                               FOREIGN KEY (employee_id) REFERENCES dealership_employees(employee_id));