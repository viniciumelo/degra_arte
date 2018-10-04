<?php
class contact_model extends CI_Model {
	function __construct() {
		parent::__construct();
	}

	function get($select = "*", $array_where = false, $array_like = false, $first = false, $offset = false, $order_by = false) {
		$data = array();
		if( $order_by != false){
			$order = key($order_by);
			if ($order != null) {
				$sort = $order_by[$order];
				$this -> db -> order_by($order, $sort);
			}
		}

		$this -> db -> select($select);
		$this -> db -> from('contacts');
		if($array_where != false)
			$this -> db -> where($array_where);
		if($array_like != false)
			$this -> db -> like($array_like);
		if($offset != false){
			$this -> db -> limit($offset, $first);
		}

		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			foreach ($query->result() as $rows) {
				$data[] = $rows;
			}
			$query -> free_result();
			return $data;
		} else {
			return null;
		}
	}

	function total($array_where, $array_like) {
		$this -> db -> select('count(*) as total');
		$this -> db -> where($array_where);
		$this -> db -> like($array_like);
		$this -> db -> from('contacts');
		$query = $this -> db -> get();
		$rows = $query -> result();
		$query -> free_result();
		return $rows[0] -> total;
	}

	function get_by_id($id) {
		$select = '*';
		$array_where = array('contacts.id' => $id);
		$array_like = array();
		$order_by = array();
		return $this -> get($select, $array_where, $array_like, 0, 1, $order_by);
	}

	function get_by_fullname($id) {
		$select = '*';
		$array_where = array('contacts.full_name' => $id);
		$array_like = array();
		$order_by = array();
		return $this -> get($select, $array_where, $array_like, 0, 1000, $order_by);
	}

	function get_by_user_id($id) {
		$select = '*';
		$array_where = array('contacts.user_id' => $id);
		$array_like = array();
		$order_by = array();
		return $this -> get($select, $array_where, $array_like, 0, 1000, $order_by);
	}

	function get_by_email($id) {
		$select = '*';
		$array_where = array('contacts.email' => $id);
		$array_like = array();
		$order_by = array();
		return $this -> get($select, $array_where, $array_like, 0, 1000, $order_by);
	}

	function get_by_phone($id) {
		$select = '*';
		$array_where = array('contacts.phone' => $id);
		$array_like = array();
		$order_by = array();
		return $this -> get($select, $array_where, $array_like, 0, 1000, $order_by);
	}

	function get_by_content($id) {
		$select = '*';
		$array_where = array('contacts.content' => $id);
		$array_like = array();
		$order_by = array();
		return $this -> get($select, $array_where, $array_like, 0, 1000, $order_by);
	}

	function insert($data_array) {
		$data_array['created_at']=date('Y-m-d H:i:s');
		$data_array['updated_at']=date('Y-m-d H:i:s');
		$this -> db -> insert('contacts', $data_array);
		return $this -> db -> insert_id();
	}

	public function remove($arr_where) {
		$this -> db -> where($arr_where);
		$this -> db -> delete('contacts');
		return $this->db->affected_rows();
	}

	public function remove_by_id($id) {
		$array_where = array('id' => $id);
		return $this -> remove($array_where);
	}

	function update($data_array, $array_where) {
		$this -> db -> where($array_where);
		$this -> db -> update('contacts', $data_array);
	}
}
?>