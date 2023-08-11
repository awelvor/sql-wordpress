https://codex.wordpress.org/Database_Description






select "HOSPITALITE NOTRE DAME";
select option_value from wpgk_options where option_name="blogname";
select now();
select "WP_POSTS";
delete from wpgk_posts where post_type="revision";
delete from wpgk_posts where post_status="auto-draft";
delete from wpgk_posts where post_status="trash";
select "WP_POSTMETA";
delete wpgk_postmeta from wpgk_postmeta left outer join wpgk_posts on wpgk_posts.id= wpgk_postmeta.post_id where wpgk_posts.id is null;
select "WP_OPTIONS";
delete from wpgk_options where option_name like '%transient%';
select "WP_TERM_RELATIONSHIPS";
delete wpgk_term_relationships from wpgk_term_relationships left outer join wpgk_posts on wpgk_term_relationships.object_id=wpgk_posts.id where wpgk_posts.id is null;
select "PLUGIN MODERN EVENTS CALENDAR LITE";
//delete wpgk_mec_dates  from wpgk_mec_dates  where wpgk_mec_dates.dend < now()- interval 1 day;
//delete wpgk_mec_events from wpgk_mec_events where wpgk_mec_events.end < now()- interval 1 day;
delete wpgk_mec_dates  from wpgk_mec_dates  left outer join wpgk_posts on wpgk_mec_dates.post_id =wpgk_posts.id where wpgk_posts.id is null;
delete wpgk_mec_events from wpgk_mec_events left outer join wpgk_posts on wpgk_mec_events.post_id=wpgk_posts.id where wpgk_posts.id is null;
delete wpgk_posts from wpgk_posts left outer join wpgk_mec_dates  on wpgk_posts.id=wpgk_mec_dates.post_id  where wpgk_posts.post_type="mec-events" and wpgk_mec_dates.id  is null;
delete wpgk_posts from wpgk_posts left outer join wpgk_mec_events on wpgk_posts.id=wpgk_mec_events.post_id where wpgk_posts.post_type="mec-events" and wpgk_mec_events.id is null;
select "BILAN WPHC_POSTS";
select post_type, count(*) from wpgk_posts group by post_type;
select now();
select "BYE...";


HND
// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dmvc5041_wp842' );


select * from wp_comments      limit 10;
select * from wp_commentmeta   limit 10;

select * from wp_links         limit 10;

select * from wp_options       limit 10;

select * from wp_posts         limit 10;
select * from wp_postmeta      limit 10;

select * from wp_users         limit 10;
select * from wp_usermeta      limit 10;

select * from wp_terms         limit 10;
select * from wp_termmeta      limit 10;
select * from wp_term_relationships limit 10;
select * from wp_term_taxonomy      limit 10;

select
wp_posts.id, wp_posts.post_title,
wp_postmeta.post_id, wp_postmeta.meta_key, wp_postmeta.meta_value
from wp_posts
inner join wp_postmeta on wp_posts.id= wp_postmeta.post_id;

select
wp_terms.term_id, wp_terms.name, wp_terms.slug,
wp_termmeta.term_id, wp_termmeta.meta_key, wp_termmeta.meta_value
from wp_terms
inner join wp_termmeta on wp_terms.term_id= wp_termmeta.term_id;


truncate wp_posts;
truncate wp_postmeta;
delete from wp_posts where post_type="revision";
delete from wp_posts where post_status="auto-draft";
delete from wp_posts where post_status="trash";
delete from wp_options where option_name like '%transient%';


select * from wpgk_posts where post_type="revision";
select * from wpgk_posts where post_status="auto-draft";
select * from wpgk_posts where post_status="trash";
select * from wpgk_options where option_name like '%transient%';

delete from wpgk_posts where post_type="revision";
delete from wpgk_posts where post_status="auto-draft";
delete from wpgk_posts where post_status="trash";
delete from wpgk_options where option_name like '%transient%';

select id, first_name, last_name, email from wpgk_mailpoet_subscribers where email="roland.dolou@orange.fr";
SELECT * FROM `wpgk_mailpoet_statistics_clicks` where subscriber_id=10;

select id, first_name, last_name, email from wpgk_mailpoet_subscribers where email="philippe.regent@gmail.com";
SELECT * FROM `wpgk_mailpoet_statistics_clicks` where subscriber_id=3;

select url from 

