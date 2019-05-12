<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mdata extends CI_Model{

	public function getLeft(){
		$this->db->select("l.kd_kereta, l.nama, k.kd_kursi");
		$this->db->from("lokomotif l");
		$this->db->join('kursi k', 'k.kd_kereta = l.kd_kereta', 'left');
		$hasil = $this->db->get();
		if($hasil->num_rows() > 0){
			foreach ($hasil->result() as $data) {
				$hasilKursi[] = $data;
			}
		}
		return $hasilKursi;
	}

	public function getRight(){
		$this->db->select("k.kd_kursi, g.kd_gerbong, g.nama_gerbong, k.kd_kereta");
		$this->db->from("kursi k");
		$this->db->join('gerbong g', 'k.kd_gerbong = g.kd_gerbong', 'right');
		$hasil = $this->db->get();
		if($hasil->num_rows() > 0){
			foreach ($hasil->result() as $data) {
				$hasilGerbong[] = $data;
			}
		}
		return $hasilGerbong;
	}

	public function getInner(){
		$this->db->select("l.kd_kereta, l.nama, g.kd_gerbong, g.nama_gerbong, k.kd_kursi");
		$this->db->from("lokomotif l");
		$this->db->join('kursi k', 'k.kd_kereta = l.kd_kereta', 'inner');
		$this->db->join('gerbong g', 'g.kd_kereta = l.kd_kereta', 'inner');
		$hasil = $this->db->get();

		return $hasil->result();
	}

}
