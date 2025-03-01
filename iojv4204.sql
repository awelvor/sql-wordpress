/* iojv4204.sql */
/* ed 1.0 2024-02-15  */



select option_value from  iojv4204_wp41.wpwf_options where option_name="blogname";
delete from iojv4204_wp41.wpwf_posts where post_type="revision";
delete from iojv4204_wp41.wpwf_posts where post_status="auto-draft";
delete from iojv4204_wp41.wpwf_posts where post_status="trash";
select option_value from iojv4204_wp275.wpcn_options where option_name="blogname";
delete from iojv4204_wp275.wpcn_posts where post_type="revision";
delete from iojv4204_wp275.wpcn_posts where post_status="auto-draft";
delete from iojv4204_wp275.wpcn_posts where post_status="trash";
select option_value from iojv4204_wp352.wphc_options where option_name="blogname";
delete from iojv4204_wp352.wphc_posts where post_type="revision";
delete from iojv4204_wp352.wphc_posts where post_status="auto-draft";
delete from iojv4204_wp352.wphc_posts where post_status="trash";
select option_value from iojv4204_wp810.wpjp_options where option_name="blogname";
delete from iojv4204_wp810.wpjp_posts where post_type="revision";
delete from iojv4204_wp810.wpjp_posts where post_status="auto-draft";
delete from iojv4204_wp810.wpjp_posts where post_status="trash";
select valeur from iojv4204_spip007.spip_meta where nom='descriptif_site';
select option_value from  iojv4204_wp41.wpwf_options where option_name="blogname";
delete from iojv4204_wp41.wpwf_posts where post_type="revision";
delete from iojv4204_wp41.wpwf_posts where post_status="auto-draft";
delete from iojv4204_wp41.wpwf_posts where post_status="trash";




/* hospitalité notre dame de lourdes */
select option_value from dmvc5041_wp842.wpgk_options where option_name="blogname";
delete from dmvc5041_wp842.wpgk_posts where post_type="revision";
delete from dmvc5041_wp842.wpgk_posts where post_status="auto-draft";
delete from dmvc5041_wp842.wpgk_posts where post_status="trash";


/* end of file */
