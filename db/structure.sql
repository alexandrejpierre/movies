CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "pseudo" varchar, "name" varchar, "first_name" varchar, "email" varchar, "fb_connected" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar, "gender" varchar, "age_range" integer, "locale" varchar, "picture_url" varchar, "fb_id" varchar);
CREATE TABLE "admins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar, "api_token" varchar);
CREATE TABLE "tmdbmovies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "adult" boolean, "backdrop_path" varchar, "belongs_to_collection" varchar, "budget" float, "genres" varchar, "homepage" varchar, "tmdb_id" varchar, "imdb_id" varchar, "original_language" varchar, "original_title" varchar, "overview" text, "popularity" float, "poster_path" varchar, "production_companies" varchar, "production_countries" varchar, "release_date" date, "revenue" float, "runtime" integer, "spoken_languages" varchar, "status" varchar, "tagline" varchar, "title" varchar, "video" boolean, "vote_average" float, "vote_count" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "release_year" integer, "rank" integer, "cast" varchar, "crew" varchar, "actors" varchar, "director" varchar, "videos" varchar, "trailer_site" varchar, "trailer_url" varchar, "overview_fr" text, "title_fr" varchar, "videos_fr" text, "trailer_site_fr" varchar, "trailer_url_fr" varchar, "friends_likes" integer);
CREATE TABLE "preferences" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "movie_id" integer, "user_id" integer, "likes" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "tmdbmovie_id" integer, "favorite" varchar);
CREATE INDEX "index_preferences_on_movie_id" ON "preferences" ("movie_id");
CREATE INDEX "index_preferences_on_user_id" ON "preferences" ("user_id");
CREATE INDEX "index_preferences_on_tmdbmovie_id" ON "preferences" ("tmdbmovie_id");
CREATE TABLE "movies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "Title" varchar, "Year" varchar, "Rated" varchar, "Released" varchar, "Season" varchar, "Episode" varchar, "Runtime" varchar, "Genre" varchar, "Director" varchar, "Writer" varchar, "Actors" text, "Plot" text, "Language" varchar, "Awards" varchar, "Poster" text, "Metascore" varchar, "imdbVotes" varchar, "imdbID" varchar, "seriesID" varchar, "Type" varchar, "tomatoMeter" varchar, "tomatoImage" varchar, "tomatoRating" varchar, "tomatoReviews" varchar, "tomatoFresh" varchar, "tomatoRotten" varchar, "tomatoConsensus" text, "tomatoUserMeter" varchar, "tomatoUserRating" varchar, "tomatoUserReviews" varchar, "tomatoURL" text, "DVD" varchar, "BoxOffice" varchar, "Production" varchar, "Website" varchar, "Response" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "Country" varchar, "imdbRating" varchar, "totalSeasons" varchar, "freshest" varchar, "IsShort" varchar, "scope" varchar, "rank" integer);
CREATE TABLE "friendships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "friend_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "recommendations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "tmdbmovie_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20160903183055');

INSERT INTO schema_migrations (version) VALUES ('20160903195901');

INSERT INTO schema_migrations (version) VALUES ('20160903201656');

INSERT INTO schema_migrations (version) VALUES ('20160903203546');

INSERT INTO schema_migrations (version) VALUES ('20160924144819');

INSERT INTO schema_migrations (version) VALUES ('20160924145423');

INSERT INTO schema_migrations (version) VALUES ('20160924145942');

INSERT INTO schema_migrations (version) VALUES ('20161029095907');

INSERT INTO schema_migrations (version) VALUES ('20161029103615');

INSERT INTO schema_migrations (version) VALUES ('20161029132822');

INSERT INTO schema_migrations (version) VALUES ('20161029133341');

INSERT INTO schema_migrations (version) VALUES ('20161029133942');

INSERT INTO schema_migrations (version) VALUES ('20161111130427');

INSERT INTO schema_migrations (version) VALUES ('20161118120654');

INSERT INTO schema_migrations (version) VALUES ('20161222200451');

INSERT INTO schema_migrations (version) VALUES ('20170119204701');

INSERT INTO schema_migrations (version) VALUES ('20170122122253');

INSERT INTO schema_migrations (version) VALUES ('20170129135051');

INSERT INTO schema_migrations (version) VALUES ('20170129172212');

INSERT INTO schema_migrations (version) VALUES ('20170129183339');

INSERT INTO schema_migrations (version) VALUES ('20170131214802');

INSERT INTO schema_migrations (version) VALUES ('20170203202419');

INSERT INTO schema_migrations (version) VALUES ('20170205165952');

INSERT INTO schema_migrations (version) VALUES ('20170205170452');

INSERT INTO schema_migrations (version) VALUES ('20170205170851');

INSERT INTO schema_migrations (version) VALUES ('20170223193951');

INSERT INTO schema_migrations (version) VALUES ('20170223194533');

INSERT INTO schema_migrations (version) VALUES ('20170317191944');

INSERT INTO schema_migrations (version) VALUES ('20170320203510');

INSERT INTO schema_migrations (version) VALUES ('20170320210949');

INSERT INTO schema_migrations (version) VALUES ('20170331200640');

INSERT INTO schema_migrations (version) VALUES ('20170401124212');

INSERT INTO schema_migrations (version) VALUES ('20170426081622');

