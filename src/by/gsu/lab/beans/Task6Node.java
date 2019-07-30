package by.gsu.lab.beans;

public class Task6Node {

	private String phone;
	
	private String surname;
	
	private String address;

	public Task6Node(String phone, String surname, String address) {
		this.phone = phone;
		this.surname = surname;
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public String getSurname() {
		return surname;
	}

	public String getAddress() {
		return address;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + ((surname == null) ? 0 : surname.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Task6Node other = (Task6Node) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (surname == null) {
			return other.surname == null;
		} else return surname.equals(other.surname);
	}

	@Override
	public String toString() {
		return "Task6Node [phone=" + phone 
				+ ", surname=" + surname 
				+ ", address=" + address + "]";
	}
}