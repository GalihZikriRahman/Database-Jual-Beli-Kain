TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER jual_barang AFTER INSERT ON tb_jual\n FOR EACH ROW BEGIN\n UPDATE tb_stok\n SET jumlah = jumlah - NEW.jumlah\n WHERE\n kd_barang = NEW.kd_barang;\n END' 'CREATE DEFINER=`root`@`localhost` TRIGGER batal_jual\nAFTER DELETE ON tb_jual \nFOR EACH ROW BEGIN\nUPDATE tb_stok\nSET jumlah = jumlah + OLD.jumlah\nWHERE\nkd_barang = OLD.kd_barang;\nEND'
sql_modes=1098907648 1098907648
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
created=157239917629 157239941018
