-- ============================================================
-- KALENJIN DICTIONARY BULK IMPORT
-- Generated: 2026-02-26T18:03:34.416Z
-- Entries: 1328
-- Run this in Supabase SQL Editor
-- ============================================================

BEGIN;

DO $$
DECLARE
  v_word_id uuid;
  v_cat_id integer;
BEGIN

  -- "chaff"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('chaff', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'chaff';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'meteteek', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibei', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ashes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ashes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ashes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oreek', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "groans"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('groans', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'groans';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimonjororyot', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tigenetap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "assemble"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('assemble', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'assemble';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagoyumgei', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "slow"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('slow', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'slow';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sip', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konereechi', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "east"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('east', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'east';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kong''asiis', 'crowned', 3, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "west"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('west', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'west';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cherongo', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ships"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ships', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ships';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'melisyek', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "renew"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('renew', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'renew';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koleelit', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thousand"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Numbers';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thousand', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thousand';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eliphuut', 'crowned', 3, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "canaan"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('canaan', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'canaan';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kanaan', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "egypt"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('egypt', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'egypt';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'misiri', 'crowned', 8, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'manda', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kingo', 'pending', 2, '{"source":"bible-scraper","confidence":0.231}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "aaron"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('aaron', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'aaron';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aron', 'crowned', 5, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "frogs"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('frogs', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'frogs';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mororochik', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "swarms"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('swarms', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'swarms';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kalyang''ik', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "vines"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('vines', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'vines';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mogoonikwak', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cloud"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cloud', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cloud';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pooldet', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gushed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gushed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gushed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kisururgei', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "red"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('red', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'red';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piriir', 'crowned', 3, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'araraita', 'crowned', 2, '{"source":"bible-scraper","confidence":0.889}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "calf"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('calf', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'calf';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'moita', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sat"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sat', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sat';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kitebee', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'epchin', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "parcel"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('parcel', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'parcel';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigotwek', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'apchee', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'shekem', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'akwaa', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sukoth', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agasigei', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gilead"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gilead', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gilead';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiroktonyu', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimnateetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agine', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "washbasin"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('washbasin', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'washbasin';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aunegei', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'awirchini', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "longer"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('longer', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'longer';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iwe', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lugosyekyok', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iwiirtech', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "dew"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('dew', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'dew';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rewootap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "redemption"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('redemption', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'redemption';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'katyaget', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "generous"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('generous', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'generous';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobesendoi', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rams"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rams', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rams';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mengichik', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lambs"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lambs', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lambs';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aaregap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keechiir', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "alarm"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('alarm', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'alarm';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sartaet', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thorns"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thorns', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thorns';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'maatap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'katok', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "honey"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Food';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('honey', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'honey';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kumyat', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fowler"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fowler', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fowler';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mesteetap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "olive"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('olive', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'olive';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mseituni', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "furrows"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('furrows', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'furrows';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigereer', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sihon"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sihon', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sihon';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amorik', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitoryatap', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stars"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stars', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stars';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kecheik', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "babylon"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('babylon', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'babylon';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'babilon', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ten-stringed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ten-stringed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ten-stringed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taman', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inoik', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "finest"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('finest', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'finest';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nganuuk', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'neryootiin', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "timbrel"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('timbrel', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'timbrel';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sugutit', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "confronted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('confronted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'confronted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kichea', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trembled"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trembled', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trembled';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotumdumgei', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cleanness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cleanness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cleanness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiliilindap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imandanyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "swear"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('swear', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'swear';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyastos', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "congregation"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('congregation', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'congregation';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuiyosyek', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "summer"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('summer', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'summer';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kemeut', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "confess"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('confess', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'confess';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chalwoktanyu', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "purposes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('purposes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'purposes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ruchinaigap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabwaatutigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "angel"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('angel', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'angel';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'malaikaiyatap', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koon', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "spear"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('spear', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'spear';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''otit', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "surprise"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('surprise', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'surprise';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingoche', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingororokyi', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "aha"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('aha', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'aha';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'haa', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teweernatennywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "flourishing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('flourishing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'flourishing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuon', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "burden"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('burden', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'burden';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mileet', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tyre"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tyre', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tyre';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyro', 'crowned', 2, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ransom"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ransom', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ransom';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kityage', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "insects"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('insects', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'insects';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'warenget', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyong''igap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trying"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trying', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trying';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogocheeng', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cush"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cush', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cush';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kush', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sink"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sink', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sink';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireetap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "distant"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('distant', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'distant';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ngeguusyek', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "axes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('axes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'axes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aonok', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "region"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('region', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'region';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tembwetap', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'zoan', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rained"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rained', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rained';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiroong''ji', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pestilence"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pestilence', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pestilence';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'parisyei', 'crowned', 1, '{"source":"bible-scraper","confidence":1}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "jacob"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('jacob', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'jacob';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'jakobo', 'crowned', 17, '{"source":"bible-scraper","confidence":0.985}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuktaindetap', 'pending', 6, '{"source":"bible-scraper","confidence":0.387}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "david"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('david', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'david';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'daudi', 'crowned', 7, '{"source":"bible-scraper","confidence":0.963}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboityondennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poi', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, '2sam', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, '1sam', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "harp"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('harp', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'harp';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ketubet', 'crowned', 6, '{"source":"bible-scraper","confidence":0.957}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lyre"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lyre', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lyre';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibugandet', 'crowned', 4, '{"source":"bible-scraper","confidence":0.941}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atyenun', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'alasun', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lord"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lord', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lord';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toroor', 'crowned', 323, '{"source":"bible-scraper","confidence":0.935}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuktaindet', 'crowned', 329, '{"source":"bible-scraper","confidence":0.824}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ineendet', 'pending', 52, '{"source":"bible-scraper","confidence":0.205}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "moses"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('moses', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'moses';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'musa', 'crowned', 4, '{"source":"bible-scraper","confidence":0.933}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "silver"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('silver', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'silver';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'fedha', 'crowned', 4, '{"source":"bible-scraper","confidence":0.933}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''a', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gold"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gold', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gold';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'thahabu', 'crowned', 5, '{"source":"bible-scraper","confidence":0.909}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "generations"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('generations', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'generations';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibinwek', 'crowned', 9, '{"source":"bible-scraper","confidence":0.9}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "precepts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('precepts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'precepts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaneetisyosyeguk', 'crowned', 11, '{"source":"bible-scraper","confidence":0.894}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "swore"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('swore', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'swore';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyasyechi', 'crowned', 2, '{"source":"bible-scraper","confidence":0.889}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itogunnyu', 'crowned', 2, '{"source":"bible-scraper","confidence":0.889}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "worthy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('worthy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'worthy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kilas', 'crowned', 2, '{"source":"bible-scraper","confidence":0.889}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kanyool', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bulls"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bulls', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bulls';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiruugik', 'crowned', 2, '{"source":"bible-scraper","confidence":0.889}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ascribe"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ascribe', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ascribe';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ogoochi', 'crowned', 2, '{"source":"bible-scraper","confidence":0.889}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toroornatet', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "almighty"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('almighty', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'almighty';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lugoosyek', 'crowned', 8, '{"source":"bible-scraper","confidence":0.882}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobootech', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "oil"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Food';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('oil', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'oil';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mwaita', 'crowned', 4, '{"source":"bible-scraper","confidence":0.875}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "darkness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('darkness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'darkness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mesundeito', 'crowned', 7, '{"source":"bible-scraper","confidence":0.875}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wisdom"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wisdom', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wisdom';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'utaatyet', 'crowned', 4, '{"source":"bible-scraper","confidence":0.875}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fatherless"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fatherless', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fatherless';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sigiik', 'crowned', 3, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwanda', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotinyei', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bird"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bird', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bird';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toriityon', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "generation"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('generation', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'generation';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibinda', 'crowned', 5, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuun', 'pending', 3, '{"source":"bible-scraper","confidence":0.213}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konai', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "believe"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('believe', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'believe';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyan', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "valley"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('valley', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'valley';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atebweetap', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tens"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tens', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tens';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eliphuusyek', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tamanusyegap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "snow"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('snow', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'snow';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teluji', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tree"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tree', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tree';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piitei', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keetit', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mourning"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mourning', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mourning';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ariiroti', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kanyaliiletap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "disturbed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('disturbed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'disturbed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''uruuge', 'crowned', 2, '{"source":"bible-scraper","confidence":0.857}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iimige', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'alasu', 'pending', 2, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ta', 'pending', 2, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nee', 'pending', 2, '{"source":"bible-scraper","confidence":0.158}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "statutes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('statutes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'statutes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paornatosyeguk', 'crowned', 11, '{"source":"bible-scraper","confidence":0.846}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paornatosyekyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.176}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "nations"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('nations', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'nations';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pororyosyek', 'crowned', 29, '{"source":"bible-scraper","confidence":0.841}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piik', 'pending', 17, '{"source":"bible-scraper","confidence":0.317}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pit"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pit', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pit';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keriinget', 'crowned', 7, '{"source":"bible-scraper","confidence":0.839}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wind"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wind', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wind';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'usoonet', 'crowned', 5, '{"source":"bible-scraper","confidence":0.833}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "smoke"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('smoke', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'smoke';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyeto', 'crowned', 3, '{"source":"bible-scraper","confidence":0.833}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koiyenso', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lions"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lions', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lions';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''etuunyik', 'crowned', 3, '{"source":"bible-scraper","confidence":0.833}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "nation"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('nation', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'nation';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pororyet', 'crowned', 3, '{"source":"bible-scraper","confidence":0.833}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "night"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('night', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'night';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kemoi', 'crowned', 11, '{"source":"bible-scraper","confidence":0.824}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peet', 'pending', 5, '{"source":"bible-scraper","confidence":0.417}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kemout', 'pending', 4, '{"source":"bible-scraper","confidence":0.378}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "moon"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('moon', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'moon';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'arawet', 'crowned', 4, '{"source":"bible-scraper","confidence":0.824}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ichop', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "prayer"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('prayer', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'prayer';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saaennyu', 'crowned', 8, '{"source":"bible-scraper","confidence":0.821}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saaet', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'soomsennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagogas', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mountains"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mountains', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mountains';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuloonook', 'crowned', 12, '{"source":"bible-scraper","confidence":0.821}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "earth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('earth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'earth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''wony', 'crowned', 54, '{"source":"bible-scraper","confidence":0.812}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "law"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('law', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'law';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atuutyeng''ung', 'crowned', 12, '{"source":"bible-scraper","confidence":0.807}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atuutyetap', 'pending', 3, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isubi', 'pending', 2, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lion"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lion', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lion';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''etundo', 'crowned', 2, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "endures"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('endures', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'endures';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tebyei', 'crowned', 21, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireenennyi', 'pending', 17, '{"source":"bible-scraper","confidence":0.767}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "haughty"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('haughty', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'haughty';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'meenei', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hosts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hosts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hosts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lugosyekyik', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "upper"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('upper', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'upper';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kooriikyik', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sun"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sun', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sun';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'asiista', 'crowned', 5, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "small"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('small', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'small';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ichuutegei', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "leviathan"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('leviathan', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'leviathan';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isa', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shackles"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shackles', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shackles';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mugurek', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "country"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('country', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'country';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiwotosyekwak', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "firstfruits"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('firstfruits', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'firstfruits';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboretook', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taunetap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimnateennywa', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bull"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bull', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bull';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eito', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "plague"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('plague', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'plague';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koroito', 'crowned', 2, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sacrificed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sacrificed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sacrificed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'weeriikwak', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiibiikwak', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiseiywek', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "north"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('north', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'north';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaataam', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bars"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bars', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bars';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'temeleiywegap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fortified"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fortified', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fortified';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imuta', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'awo', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "locust"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('locust', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'locust';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chereng''endet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "object"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('object', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'object';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaegu', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bend"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bend', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bend';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kariich', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwanget', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "houses"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('houses', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'houses';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mogornateet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koonnyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "dust"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('dust', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'dust';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'temburyek', 'crowned', 5, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''uruukyin', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cords"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cords', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cords';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poroonigap', 'crowned', 2, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stumbling"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stumbling', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stumbling';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'put', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isaru', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "surrounded"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('surrounded', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'surrounded';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ang''eetoi', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stone"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stone', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stone';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koita', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sought"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sought', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sought';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'acheeng', 'crowned', 2, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "looking"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('looking', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'looking';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaimenitu', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "slumber"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('slumber', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'slumber';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inuuchi', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fortunes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fortunes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fortunes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigeluul', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "footstool"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('footstool', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'footstool';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keel', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''echereetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keelyekyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "serpent"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('serpent', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'serpent';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ereneet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "snares"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('snares', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'snares';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mestonogap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "subdues"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('subdues', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'subdues';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogasa', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "greatness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('greatness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'greatness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'etunatennyi', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "widow"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('widow', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'widow';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mosoget', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "brokenhearted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('brokenhearted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'brokenhearted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ilyotiin', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "dancing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('dancing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'dancing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ureryet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shook"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shook', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shook';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobotan', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hailstones"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hailstones', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hailstones';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''etetyot', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "today"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('today', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'today';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rani', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "doors"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('doors', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'doors';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ong''eet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kurgotik', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyo', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'met', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sackcloth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sackcloth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sackcloth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuniet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "faces"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('faces', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'faces';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'togoochikwak', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fret"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fret', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fret';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyitin', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ameng', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mire"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mire', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mire';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atatyat', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "delay"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('delay', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'delay';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amegagei', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toretindennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sinned"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sinned', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sinned';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ayaun', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "told"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('told', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'told';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komwaiwech', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigegas', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "derision"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('derision', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'derision';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kororechinech', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komoswekyok', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keegu', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'neegiteenech', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "revile"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('revile', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'revile';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rosu', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "snarling"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('snarling', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'snarling';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'seset', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wax"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wax', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wax';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'temeniet', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rides"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rides', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rides';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laanyei', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pens"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pens', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pens';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piusyegap', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "craved"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('craved', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'craved';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'myat', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "branches"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('branches', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'branches';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mooriikyik', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "revive"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('revive', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'revive';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isoobech', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "resound"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('resound', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'resound';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingomoror', 'crowned', 1, '{"source":"bible-scraper","confidence":0.8}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fortress"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fortress', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fortress';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'irimennyu', 'pending', 6, '{"source":"bible-scraper","confidence":0.786}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kooi', 'pending', 4, '{"source":"bible-scraper","confidence":0.593}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sword"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sword', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sword';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chok', 'pending', 6, '{"source":"bible-scraper","confidence":0.786}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rotwetap', 'pending', 3, '{"source":"bible-scraper","confidence":0.556}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rotweng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rotonikwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "grass"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('grass', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'grass';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'susweek', 'pending', 5, '{"source":"bible-scraper","confidence":0.783}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "enemy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('enemy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'enemy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puunyoot', 'pending', 9, '{"source":"bible-scraper","confidence":0.783}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'punyondennyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "right"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('right', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'right';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tai', 'pending', 19, '{"source":"bible-scraper","confidence":0.779}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mount"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mount', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mount';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tulweetap', 'pending', 4, '{"source":"bible-scraper","confidence":0.778}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "springs"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('springs', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'springs';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kong''igap', 'pending', 3, '{"source":"bible-scraper","confidence":0.769}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tamboiyot', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "preserve"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('preserve', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'preserve';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isooba', 'pending', 5, '{"source":"bible-scraper","confidence":0.769}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "burnt"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('burnt', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'burnt';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibeelei', 'pending', 3, '{"source":"bible-scraper","confidence":0.769}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mebaibaitune', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiseiywot', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "servant"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('servant', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'servant';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboityondeng''ung', 'pending', 12, '{"source":"bible-scraper","confidence":0.767}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'otwogindeng''ung', 'pending', 2, '{"source":"bible-scraper","confidence":0.15}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'otwogeng''ung', 'pending', 2, '{"source":"bible-scraper","confidence":0.15}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "peace"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Greetings';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('peace', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'peace';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaalyeet', 'pending', 8, '{"source":"bible-scraper","confidence":0.762}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingotebee', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "kingdoms"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('kingdoms', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'kingdoms';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitornatosyek', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "angels"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('angels', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'angels';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'malaikaisyekyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyookyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wine"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Food';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wine', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wine';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'divaik', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sea"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sea', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sea';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyanjet', 'pending', 11, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stood"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stood', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stood';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tonon', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mwa', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hungry"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hungry', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hungry';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rubeet', 'pending', 3, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amei', 'pending', 2, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "steadfast"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('steadfast', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'steadfast';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igiilotkei', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atyeni', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "spacious"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('spacious', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'spacious';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paraa', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "afraid"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('afraid', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'afraid';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yweisyei', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imuuchi', 'pending', 2, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "portion"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('portion', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'portion';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kebebertanyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deliverer"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deliverer', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deliverer';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saruunindennyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teeksennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "horse"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('horse', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'horse';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paraisiit', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pasture"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pasture', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pasture';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keechiiregap', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'akweeng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "flock"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('flock', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'flock';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'akweetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.75}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imut', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forever"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forever', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forever';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koigeny', 'pending', 46, '{"source":"bible-scraper","confidence":0.748}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agoi', 'pending', 10, '{"source":"bible-scraper","confidence":0.203}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fire"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fire', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fire';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'maat', 'pending', 8, '{"source":"bible-scraper","confidence":0.744}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lal', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pichooto', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "understanding"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('understanding', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'understanding';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaguiyet', 'pending', 5, '{"source":"bible-scraper","confidence":0.741}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koono', 'pending', 2, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "arrogant"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('arrogant', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'arrogant';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'menotik', 'pending', 5, '{"source":"bible-scraper","confidence":0.741}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mendos', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gods"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gods', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gods';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuktaik', 'pending', 5, '{"source":"bible-scraper","confidence":0.741}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kanamonik', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'siirei', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sorrow"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sorrow', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sorrow';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'arageneet', 'pending', 4, '{"source":"bible-scraper","confidence":0.737}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "laws"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('laws', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'laws';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirwoogutiguk', 'pending', 9, '{"source":"bible-scraper","confidence":0.735}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirwoogutikyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "waves"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('waves', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'waves';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mildogei', 'pending', 2, '{"source":"bible-scraper","confidence":0.727}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mildaennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peeguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pogei', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "womb"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('womb', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'womb';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'moetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.727}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imoong''wa', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "kings"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('kings', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'kings';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitorinik', 'pending', 7, '{"source":"bible-scraper","confidence":0.718}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirwoogigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "violence"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('violence', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'violence';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koroomnateet', 'pending', 3, '{"source":"bible-scraper","confidence":0.714}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tents"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tents', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tents';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emaisyegap', 'pending', 3, '{"source":"bible-scraper","confidence":0.714}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emaisyekwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "evening"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('evening', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'evening';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koskoleny', 'pending', 3, '{"source":"bible-scraper","confidence":0.714}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "morning"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('morning', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'morning';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'karon', 'pending', 5, '{"source":"bible-scraper","confidence":0.714}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'karonet', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "good"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('good', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'good';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'myee', 'pending', 21, '{"source":"bible-scraper","confidence":0.712}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sent"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sent', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sent';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyookto', 'pending', 3, '{"source":"bible-scraper","confidence":0.706}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koba', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "temple"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('temple', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'temple';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'hekalung''ung', 'pending', 3, '{"source":"bible-scraper","confidence":0.706}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'hekalunnyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.533}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'anyoone', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "reigns"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('reigns', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'reigns';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitorani', 'pending', 3, '{"source":"bible-scraper","confidence":0.706}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''eigei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigimit', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "face"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('face', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'face';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'togeng''ung', 'pending', 10, '{"source":"bible-scraper","confidence":0.704}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'togeennyi', 'pending', 3, '{"source":"bible-scraper","confidence":0.278}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'togeennyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heart"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heart', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heart';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'muguleldanyu', 'pending', 26, '{"source":"bible-scraper","confidence":0.703}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'muguleldo', 'pending', 4, '{"source":"bible-scraper","confidence":0.152}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "teach"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('teach', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'teach';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ineeta', 'pending', 8, '{"source":"bible-scraper","confidence":0.698}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibune', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bones"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bones', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bones';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kawekyuk', 'pending', 4, '{"source":"bible-scraper","confidence":0.696}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kawekyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tigenennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "holy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('holy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'holy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiliil', 'pending', 16, '{"source":"bible-scraper","confidence":0.696}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "house"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('house', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'house';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kootap', 'pending', 10, '{"source":"bible-scraper","confidence":0.678}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koong''ung', 'pending', 4, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koonnyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.171}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "king"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('king', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'king';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitoryat', 'pending', 11, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitoryandennyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heavens"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heavens', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heavens';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipsengwet', 'pending', 18, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thunder"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thunder', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thunder';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuleeng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "valleys"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('valleys', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'valleys';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atebwosyek', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "birds"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('birds', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'birds';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toriitik', 'pending', 3, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cattle"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cattle', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cattle';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuuga', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cedars"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cedars', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cedars';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taragonigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taragonik', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "goats"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('goats', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'goats';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''oroorek', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "proper"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('proper', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'proper';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amitwogikwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igenin', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rebuked"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rebuked', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rebuked';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kergong', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ruler"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ruler', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ruler';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pounindetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inde', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blood"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blood', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blood';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korotiik', 'pending', 4, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korotiigap', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kitumda', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaaktaetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ate"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ate', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ate';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'am', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amitwogigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "envious"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('envious', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'envious';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''etkong', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "aroused"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('aroused', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'aroused';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kitach', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konereech', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "snare"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('snare', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'snare';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mesteet', 'pending', 4, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigouny', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "south"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('south', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'south';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'murot', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "straight"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('straight', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'straight';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'litit', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oreng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "prisoners"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('prisoners', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'prisoners';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ratotiin', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "iron"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('iron', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'iron';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kariik', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "elders"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('elders', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'elders';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyek', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mine"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mine', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mine';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nenyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "aid"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('aid', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'aid';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koonech', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kegirindae', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toretetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toreteet', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tilei', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hatred"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hatred', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hatred';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wegeet', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blotted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blotted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blotted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kainennywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amat', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blot"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blot', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blot';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabwaatennywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koisto', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shoot"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shoot', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shoot';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komwok', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rising"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rising', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rising';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kachor', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kororokto', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'asiis', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "courts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('courts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'courts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'seremusyegap', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'seremusyekyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'seremusyeguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "learn"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('learn', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'learn';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aneetkei', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "comfort"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('comfort', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'comfort';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igaigaa', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lowly"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lowly', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lowly';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyeraat', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "seven"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Numbers';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('seven', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'seven';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tisap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyil', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "coals"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('coals', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'coals';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nesek', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "war"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('war', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'war';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pooryeet', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "statute"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('statute', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'statute';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paornateet', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "teeth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('teeth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'teeth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kelekwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kelek', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "builds"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('builds', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'builds';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teechei', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "anointed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('anointed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'anointed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iilaat', 'pending', 3, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nenyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.353}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "clothe"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('clothe', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'clothe';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'alaakyini', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "priests"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('priests', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'priests';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tisiikyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kutit', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "crown"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('crown', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'crown';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'naaryeennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "daughter"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Family';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('daughter', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'daughter';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cheptap', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fool"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fool', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fool';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiwechei', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'perber', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "grave"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('grave', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'grave';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kererit', 'pending', 3, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobek', 'pending', 2, '{"source":"bible-scraper","confidence":0.381}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "grows"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('grows', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'grows';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tanui', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "send"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('send', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'send';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyookte', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gathers"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gathers', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gathers';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyumi', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sounding"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sounding', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sounding';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iryageet', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cheetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cup"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cup', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cup';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigombennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wings"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wings', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wings';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kebebaiguk', 'pending', 3, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kebebaigap', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'awe', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trembling"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trembling', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trembling';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'potanet', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaiyweisyet', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "consume"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('consume', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'consume';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iwong''u', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "altar"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('altar', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'altar';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaptisisyeng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bloodthirsty"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bloodthirsty', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bloodthirsty';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rumiik', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deaf"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deaf', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deaf';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isiis', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "looks"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('looks', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'looks';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''ururi', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'utaat', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ngo', 'pending', 2, '{"source":"bible-scraper","confidence":0.207}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "disgraced"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('disgraced', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'disgraced';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koteweerogis', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "confusion"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('confusion', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'confusion';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poiboi', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotoptobenso', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "health"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('health', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'health';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosabei', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "meditated"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('meditated', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'meditated';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'abwaatoti', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'abwaati', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "drove"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('drove', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'drove';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ioon', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "senseless"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('senseless', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'senseless';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koseng''eng''inik', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "dug"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('dug', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'dug';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagororokyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'uny', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "truly"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('truly', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'truly';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'istoa', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "suddenly"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('suddenly', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'suddenly';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosip', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yooto', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rugged"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rugged', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rugged';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kooen', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gifts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gifts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gifts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagoochinoik', 'pending', 2, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "burned"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('burned', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'burned';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigobeel', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "meat"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Food';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('meat', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'meat';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'panyeek', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tribe"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tribe', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tribe';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lewen', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "terrors"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('terrors', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'terrors';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuisosyeguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.667}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hand"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hand', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hand';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eung''ung', 'pending', 17, '{"source":"bible-scraper","confidence":0.653}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eutap', 'pending', 6, '{"source":"bible-scraper","confidence":0.272}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunnyi', 'pending', 4, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunnyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.164}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wicked"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wicked', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wicked';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiptengeginik', 'pending', 27, '{"source":"bible-scraper","confidence":0.65}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiptengekyot', 'pending', 10, '{"source":"bible-scraper","confidence":0.314}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "throne"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('throne', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'throne';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''echerennyi', 'pending', 4, '{"source":"bible-scraper","confidence":0.636}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitornatet', 'pending', 5, '{"source":"bible-scraper","confidence":0.606}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''echereeng''ung', 'pending', 3, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotebee', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "light"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('light', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'light';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lapkeiyet', 'pending', 6, '{"source":"bible-scraper","confidence":0.632}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lapkeiyetap', 'pending', 4, '{"source":"bible-scraper","confidence":0.452}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lapkeiyeng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ancestors"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ancestors', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ancestors';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwanisyekyok', 'pending', 3, '{"source":"bible-scraper","confidence":0.632}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwanisyekwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "city"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('city', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'city';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nganaseet', 'pending', 6, '{"source":"bible-scraper","confidence":0.629}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nganaseetap', 'pending', 3, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rock"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rock', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rock';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rwandennyu', 'pending', 6, '{"source":"bible-scraper","confidence":0.629}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rwandet', 'pending', 6, '{"source":"bible-scraper","confidence":0.579}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rivers"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rivers', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rivers';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ainoosyek', 'pending', 3, '{"source":"bible-scraper","confidence":0.625}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "seas"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('seas', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'seas';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyanjosyek', 'pending', 3, '{"source":"bible-scraper","confidence":0.625}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pendote', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "new"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('new', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'new';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'leel', 'pending', 3, '{"source":"bible-scraper","confidence":0.625}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shadow"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shadow', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shadow';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'urwetap', 'pending', 3, '{"source":"bible-scraper","confidence":0.625}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'urwet', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "evildoers"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('evildoers', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'evildoers';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaigap', 'pending', 5, '{"source":"bible-scraper","confidence":0.621}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengekto', 'pending', 5, '{"source":"bible-scraper","confidence":0.321}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "food"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Food';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('food', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'food';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amitwogik', 'pending', 7, '{"source":"bible-scraper","confidence":0.619}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amitwogikyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigogoochi', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wrath"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wrath', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wrath';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nereegeguk', 'pending', 7, '{"source":"bible-scraper","confidence":0.619}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nereegek', 'pending', 3, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyitateng''ung', 'pending', 2, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''woneen', 'pending', 2, '{"source":"bible-scraper","confidence":0.214}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koroomindap', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "name"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('name', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'name';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaineng''ung', 'pending', 24, '{"source":"bible-scraper","confidence":0.619}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kainennyi', 'pending', 13, '{"source":"bible-scraper","confidence":0.397}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kainetap', 'pending', 12, '{"source":"bible-scraper","confidence":0.366}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "struck"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('struck', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'struck';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pir', 'pending', 2, '{"source":"bible-scraper","confidence":0.615}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'par', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blessing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blessing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blessing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaberuret', 'pending', 2, '{"source":"bible-scraper","confidence":0.615}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "violent"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('violent', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'violent';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koroom', 'pending', 2, '{"source":"bible-scraper","confidence":0.615}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chiito', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "decrees"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('decrees', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'decrees';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atuutiguk', 'pending', 11, '{"source":"bible-scraper","confidence":0.611}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mouths"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mouths', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mouths';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kutusweekwak', 'pending', 6, '{"source":"bible-scraper","confidence":0.611}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tongues"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tongues', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tongues';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''elyebwekwak', 'pending', 4, '{"source":"bible-scraper","confidence":0.609}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''elyebwekyok', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kutusweek', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wilderness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wilderness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wilderness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'surkwen', 'pending', 5, '{"source":"bible-scraper","confidence":0.606}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "neighbor"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('neighbor', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'neighbor';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chiitap', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kokwennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "foundations"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('foundations', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'foundations';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lumeiywek', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tonone', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lumeiywegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trees"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trees', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trees';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keetiigap', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keetiik', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rebelled"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rebelled', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rebelled';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingelelji', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "despised"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('despised', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'despised';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sas', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sasaat', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "scepter"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('scepter', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'scepter';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirokto', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lifts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lifts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lifts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''eeti', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''uruuksei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "better"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('better', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'better';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaigai', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimang''u', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosiir', 'pending', 3, '{"source":"bible-scraper","confidence":0.227}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "knowledge"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('knowledge', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'knowledge';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'naet', 'pending', 2, '{"source":"bible-scraper","confidence":0.6}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "battle"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('battle', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'battle';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lugeet', 'pending', 4, '{"source":"bible-scraper","confidence":0.593}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuutap', 'pending', 2, '{"source":"bible-scraper","confidence":0.296}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "eyes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('eyes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'eyes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyekyuk', 'pending', 10, '{"source":"bible-scraper","confidence":0.588}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "compassionate"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('compassionate', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'compassionate';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireenet', 'pending', 3, '{"source":"bible-scraper","confidence":0.588}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyiitaat', 'pending', 3, '{"source":"bible-scraper","confidence":0.345}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gates"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gates', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gates';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kurgotigap', 'pending', 3, '{"source":"bible-scraper","confidence":0.588}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ormariichoguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "meditate"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('meditate', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'meditate';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'abwaatati', 'pending', 3, '{"source":"bible-scraper","confidence":0.588}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabwaatennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'achame', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "listen"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('listen', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'listen';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'epchi', 'pending', 5, '{"source":"bible-scraper","confidence":0.588}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iit', 'pending', 9, '{"source":"bible-scraper","confidence":0.531}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oep', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ogas', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaswa', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "worship"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('worship', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'worship';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ogutung''ji', 'pending', 3, '{"source":"bible-scraper","confidence":0.588}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "death"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('death', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'death';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'meet', 'pending', 9, '{"source":"bible-scraper","confidence":0.586}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobar', 'pending', 2, '{"source":"bible-scraper","confidence":0.171}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saboonwekwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "song"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('song', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'song';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyendo', 'pending', 4, '{"source":"bible-scraper","confidence":0.583}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sheep"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Animals';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sheep', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sheep';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keechiirek', 'pending', 4, '{"source":"bible-scraper","confidence":0.583}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "joy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('joy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'joy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poiboiyet', 'pending', 12, '{"source":"bible-scraper","confidence":0.578}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "helper"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('helper', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'helper';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iegu', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "day"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('day', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'day';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuut', 'pending', 15, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komugul', 'pending', 13, '{"source":"bible-scraper","confidence":0.413}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "iniquities"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('iniquities', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'iniquities';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengekwogikyok', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trembles"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trembles', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trembles';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'potani', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "oppress"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('oppress', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'oppress';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koyachi', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "signs"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('signs', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'signs';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaboorunoikyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaboorunoik', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hail"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hail', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hail';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koik', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koiyat', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "asked"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('asked', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'asked';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'soom', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "river"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('river', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'river';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aineet', 'pending', 2, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "redeemed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('redeemed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'redeemed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ityaach', 'pending', 2, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stilled"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stilled', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stilled';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosiis', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gain"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gain', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gain';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyekyin', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "riches"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('riches', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'riches';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mogornatosyek', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "longing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('longing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'longing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emosto', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "friends"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('friends', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'friends';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'choronokyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "divided"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('divided', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'divided';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aeng', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "restores"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('restores', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'restores';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pun', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yetunetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kita', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogaskei', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "traps"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('traps', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'traps';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mestonok', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thrown"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thrown', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thrown';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kong''eetyo', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "quickly"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('quickly', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'quickly';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chogu', 'pending', 3, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chokyi', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toreto', 'pending', 3, '{"source":"bible-scraper","confidence":0.385}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "foreigners"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('foreigners', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'foreigners';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ityacha', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toek', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isarwo', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "humble"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('humble', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'humble';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iming''inegei', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "highest"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('highest', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'highest';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipsengwetisyegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "change"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('change', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'change';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyiti', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "examine"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('examine', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'examine';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isyacha', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sacrifices"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sacrifices', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sacrifices';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagoochinoiguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiseiyweguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "birth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('birth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'birth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'moo', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "assembly"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('assembly', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'assembly';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuiyet', 'pending', 3, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuiyetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "integrity"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('integrity', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'integrity';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagesunatetapkei', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagesunatennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sacred"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sacred', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sacred';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emainnyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "breaks"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('breaks', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'breaks';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iriei', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "silenced"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('silenced', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'silenced';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiplembechonik', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lack"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lack', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lack';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rarchin', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "future"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('future', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'future';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagesunetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "want"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('want', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'want';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kong''em', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koyaiywo', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "friend"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('friend', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'friend';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chorwennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sharp"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sharp', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sharp';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atiben', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rotonik', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipchabonik', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'miitei', 'pending', 2, '{"source":"bible-scraper","confidence":0.171}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thank"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thank', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thank';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korosyotap', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agoonin', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deceit"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deceit', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deceit';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''elyeptang''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aalseet', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chobei', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "melts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('melts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'melts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chootei', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bounty"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bounty', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bounty';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'myeeindong''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "glorify"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('glorify', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'glorify';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atoroori', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "horns"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('horns', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'horns';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amotoroor', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuineng''wong', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuinoigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "walls"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('walls', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'walls';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibut', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''otonokyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "consumes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('consumes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'consumes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peelei', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "foundation"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('foundation', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'foundation';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pounateet', 'pending', 1, '{"source":"bible-scraper","confidence":0.571}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "land"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('land', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'land';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emet', 'pending', 14, '{"source":"bible-scraper","confidence":0.568}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emennywa', 'pending', 3, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mouth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mouth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mouth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kutinnyu', 'pending', 12, '{"source":"bible-scraper","confidence":0.561}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kutinnyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.17}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gracious"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gracious', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gracious';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'myeeindo', 'pending', 4, '{"source":"bible-scraper","confidence":0.56}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "feet"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('feet', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'feet';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keelyekyuk', 'pending', 6, '{"source":"bible-scraper","confidence":0.558}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keelyekyok', 'pending', 2, '{"source":"bible-scraper","confidence":0.188}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "clouds"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('clouds', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'clouds';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poolik', 'pending', 3, '{"source":"bible-scraper","confidence":0.556}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibungweret', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuuen', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forest"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forest', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forest';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'timiin', 'pending', 3, '{"source":"bible-scraper","confidence":0.556}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyony', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "son"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Family';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('son', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'son';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'weeriitap', 'pending', 3, '{"source":"bible-scraper","confidence":0.556}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igimityige', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'heb', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "covenant"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('covenant', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'covenant';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kayomisennyi', 'pending', 4, '{"source":"bible-scraper","confidence":0.552}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kayomiset', 'pending', 2, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'arorutyennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiyomiske', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kayomisennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "inheritance"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('inheritance', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'inheritance';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poroteng''ung', 'pending', 4, '{"source":"bible-scraper","confidence":0.552}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'porotennyi', 'pending', 3, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nereekyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'porotennywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ago"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ago', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ago';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keny', 'pending', 4, '{"source":"bible-scraper","confidence":0.552}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "decree"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('decree', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'decree';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atuutyet', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "commanded"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('commanded', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'commanded';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''at', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "idols"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('idols', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'idols';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kanamonikwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kanamonigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiwai', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "body"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('body', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'body';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poortanyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "contempt"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('contempt', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'contempt';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sasisyet', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sustains"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sustains', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sustains';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiiei', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "vindicate"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('vindicate', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'vindicate';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibesyeiwo', 'pending', 2, '{"source":"bible-scraper","confidence":0.545}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "enemies"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('enemies', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'enemies';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puunikyuk', 'pending', 16, '{"source":"bible-scraper","confidence":0.544}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puuniguk', 'pending', 5, '{"source":"bible-scraper","confidence":0.24}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trouble"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trouble', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trouble';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalilda', 'pending', 8, '{"source":"bible-scraper","confidence":0.542}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "servants"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('servants', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'servants';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboitiniguk', 'pending', 4, '{"source":"bible-scraper","confidence":0.538}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboitiinikyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboitinigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'otwogikyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "word"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('word', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'word';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''olyoondeng''ung', 'pending', 11, '{"source":"bible-scraper","confidence":0.538}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''olyoondennyi', 'pending', 5, '{"source":"bible-scraper","confidence":0.321}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amang''u', 'pending', 5, '{"source":"bible-scraper","confidence":0.277}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "awesome"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('awesome', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'awesome';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imuisei', 'pending', 2, '{"source":"bible-scraper","confidence":0.533}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hills"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hills', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hills';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mengeechen', 'pending', 2, '{"source":"bible-scraper","confidence":0.533}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tongue"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tongue', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tongue';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''elyeptanyu', 'pending', 4, '{"source":"bible-scraper","confidence":0.533}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''elyeptanyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "alone"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('alone', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'alone';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inyegei', 'pending', 2, '{"source":"bible-scraper","confidence":0.533}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ineegei', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inyeendet', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wonderful"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wonderful', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wonderful';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kikwong''ee', 'pending', 5, '{"source":"bible-scraper","confidence":0.529}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyonikyik', 'pending', 3, '{"source":"bible-scraper","confidence":0.263}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "righteous"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('righteous', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'righteous';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imanda', 'pending', 22, '{"source":"bible-scraper","confidence":0.528}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iman', 'pending', 18, '{"source":"bible-scraper","confidence":0.432}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'po', 'pending', 33, '{"source":"bible-scraper","confidence":0.277}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ends"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ends', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ends';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poochin', 'pending', 3, '{"source":"bible-scraper","confidence":0.526}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mother"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Family';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mother', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mother';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamennyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.526}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamet', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kitupche', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "years"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('years', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'years';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kenyiisyek', 'pending', 3, '{"source":"bible-scraper","confidence":0.526}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kenyisyeguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kenyiisyekyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hearts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hearts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hearts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mugulelwekwak', 'pending', 7, '{"source":"bible-scraper","confidence":0.519}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mugulelwekwok', 'pending', 2, '{"source":"bible-scraper","confidence":0.216}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fear"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fear', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fear';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iywei', 'pending', 10, '{"source":"bible-scraper","confidence":0.507}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oiywei', 'pending', 3, '{"source":"bible-scraper","confidence":0.207}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iywein', 'pending', 3, '{"source":"bible-scraper","confidence":0.169}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gladness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gladness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gladness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagasetapkei', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ear"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ear', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ear';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'epcha', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pity"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pity', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pity';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riiree', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "garment"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('garment', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'garment';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ngoryeet', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "remembers"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('remembers', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'remembers';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibwaati', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "kingdom"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('kingdom', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'kingdom';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitornatennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitornateng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toroornatetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "works"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('works', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'works';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyoniguk', 'pending', 5, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyonigap', 'pending', 4, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "led"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('led', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'led';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'indochi', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimutu', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobun', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "depths"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('depths', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'depths';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rirosyek', 'pending', 4, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oriit', 'pending', 3, '{"source":"bible-scraper","confidence":0.294}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mankind"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mankind', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mankind';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'weeriigap', 'pending', 5, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yachin', 'pending', 3, '{"source":"bible-scraper","confidence":0.476}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'myeeindonyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kolas', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "parched"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('parched', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'parched';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaamaat', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fields"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fields', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fields';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mbareenik', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fruitful"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fruitful', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fruitful';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sabibuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sanctuary"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sanctuary', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sanctuary';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ole-tiliil', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oldanyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.32}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trample"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trample', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trample';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puunikyok', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "clothed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('clothed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'clothed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingilaakyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lot"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lot', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lot';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kebebertap', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "bless"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('bless', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'bless';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iberuuri', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iberuur', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iberuurech', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "offering"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('offering', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'offering';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korosyot', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagoochinet', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fully"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fully', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fully';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''at', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rulers"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rulers', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rulers';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pounik', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laitorinigap', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogas', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "suffered"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('suffered', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'suffered';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kinyalila', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "youth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('youth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'youth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ming''in', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'neran', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aa', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fill"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fill', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fill';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yamei', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inyiiti', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "horn"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('horn', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'horn';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuinetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuinennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kitoroori', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "falling"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('falling', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'falling';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'choorchingei', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "count"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('count', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'count';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aiiti', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "safe"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('safe', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'safe';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riibo', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "head"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('head', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'head';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'metinnyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'metit', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thirst"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thirst', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thirst';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'melelda', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ears"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ears', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ears';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itiikyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kastoi', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itiik', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itiikyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rescued"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rescued', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rescued';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kisarwo', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "backs"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('backs', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'backs';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'patai', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "avenges"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('avenges', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'avenges';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mugetuut', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "iniquity"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('iniquity', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'iniquity';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengektonyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inyoiywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shelter"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shelter', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shelter';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ung''aat', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aung''egei', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "father"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Family';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('father', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'father';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'abba', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "transgressions"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('transgressions', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'transgressions';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pistaosyekyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "warrior"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('warrior', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'warrior';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyigan', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "condemned"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('condemned', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'condemned';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirwookyin', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "disgrace"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('disgrace', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'disgrace';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingolilanso', 'pending', 3, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teweernateet', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rosyinet', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tears"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tears', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tears';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peekyuk', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peegap', 'pending', 3, '{"source":"bible-scraper","confidence":0.476}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "foreign"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('foreign', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'foreign';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuktain', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "swords"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('swords', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'swords';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rotoogap', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "astray"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('astray', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'astray';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mastoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "majestic"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('majestic', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'majestic';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyitot', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiptaiyandennyo', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "restore"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('restore', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'restore';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'weektech', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingokweng''is', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kesarwech', 'pending', 2, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogeny', 'pending', 2, '{"source":"bible-scraper","confidence":0.229}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "born"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('born', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'born';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kisikyin', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chiichi', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "created"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('created', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'created';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itau', 'pending', 1, '{"source":"bible-scraper","confidence":0.5}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyai', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "loves"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('loves', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'loves';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chamei', 'pending', 4, '{"source":"bible-scraper","confidence":0.483}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "faithfulness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('faithfulness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'faithfulness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imandang''ung', 'pending', 9, '{"source":"bible-scraper","confidence":0.48}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imaning''ung', 'pending', 3, '{"source":"bible-scraper","confidence":0.227}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rain"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rain', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rain';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ropta', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cried"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cried', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cried';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalildanywa', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pichiinwekwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riirchi', 'pending', 2, '{"source":"bible-scraper","confidence":0.353}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komang''une', 'pending', 2, '{"source":"bible-scraper","confidence":0.316}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koriirchi', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pichiindanyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ariirchi', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "living"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('living', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'living';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saptos', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sabei', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heads"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heads', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heads';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'metowegap', 'pending', 2, '{"source":"bible-scraper","confidence":0.471}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'metowekwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kolelechi', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keera', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mar', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "remember"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('remember', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'remember';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibwaat', 'pending', 6, '{"source":"bible-scraper","confidence":0.468}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'abwaatin', 'pending', 2, '{"source":"bible-scraper","confidence":0.207}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "waters"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('waters', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'waters';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peek', 'pending', 11, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "creatures"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('creatures', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'creatures';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyong''ik', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "chosen"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('chosen', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'chosen';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigelewen', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'alewen', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kolewen', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pleasant"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pleasant', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pleasant';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'karaaran', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tya', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deep"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deep', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deep';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireet', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "reaches"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('reaches', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'reaches';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itei', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sovereign"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sovereign', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sovereign';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiptaiyandennyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "troubles"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('troubles', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'troubles';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalilwogik', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalilwogikyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "inherit"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('inherit', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'inherit';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiwong''u', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'namei', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "next"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('next', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'next';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piitu', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lagokwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wealth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wealth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wealth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pegu', 'pending', 2, '{"source":"bible-scraper","confidence":0.462}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chaang''indap', 'pending', 2, '{"source":"bible-scraper","confidence":0.214}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ogeero', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wonders"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wonders', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wonders';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwang''utikyik', 'pending', 3, '{"source":"bible-scraper","confidence":0.455}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwang''utik', 'pending', 2, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koyai', 'pending', 2, '{"source":"bible-scraper","confidence":0.171}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lead"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lead', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lead';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'indoiywa', 'pending', 3, '{"source":"bible-scraper","confidence":0.455}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingondoiywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hear"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hear', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hear';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kas', 'pending', 8, '{"source":"bible-scraper","confidence":0.448}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "planted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('planted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'planted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiminji', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komiin', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kalasunoik', 'pending', 10, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'otyenji', 'pending', 7, '{"source":"bible-scraper","confidence":0.313}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "silence"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('silence', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'silence';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ang''eme', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'siisek', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "satisfied"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('satisfied', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'satisfied';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piyonyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "number"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('number', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'number';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iitoksei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiit', 'pending', 2, '{"source":"bible-scraper","confidence":0.176}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "storm"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('storm', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'storm';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipchurchuryet', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "flowing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('flowing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'flowing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'walei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "oppression"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('oppression', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'oppression';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'usiisyet', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sastaet', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "awaken"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('awaken', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'awaken';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ang''eete', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shown"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shown', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shown';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koboorchi', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "home"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('home', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'home';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koot', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fulfill"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fulfill', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fulfill';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aaroorchi', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agoochini', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "reward"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('reward', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'reward';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagesunet', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "worthless"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('worthless', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'worthless';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyolu', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "oath"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('oath', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'oath';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ayosye', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rule"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rule', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rule';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koboiywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "foot"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('foot', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'foot';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keeldong''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "swept"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('swept', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'swept';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'roote', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'laldos', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saboonwekyok', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "eating"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('eating', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'eating';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuurei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piikyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trains"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trains', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trains';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ineeti', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "nobles"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('nobles', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'nobles';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taagunotiin', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "slander"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('slander', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'slander';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itaami', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "myself"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('myself', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'myself';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ariipkei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heights"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heights', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heights';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koigei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "neighbors"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('neighbors', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'neighbors';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iteweerat', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piigap', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "slay"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('slay', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'slay';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'parei', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "overtake"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('overtake', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'overtake';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingonam', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "reason"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('reason', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'reason';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'jhn', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wecho', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gloat"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gloat', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gloat';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koboiboitunena', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amegoochi', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "eye"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('eye', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'eye';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koonyek', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "compare"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('compare', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'compare';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyonik', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shake"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shake', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shake';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'metowek', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "test"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('test', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'test';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kityem', 'pending', 1, '{"source":"bible-scraper","confidence":0.444}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyem', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "judge"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('judge', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'judge';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'irwookyin', 'pending', 3, '{"source":"bible-scraper","confidence":0.435}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korwookyin', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korwookyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mercy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mercy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mercy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'soomutikyuk', 'pending', 4, '{"source":"bible-scraper","confidence":0.432}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "arise"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('arise', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'arise';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''eet', 'pending', 3, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hate"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hate', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hate';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aweche', 'pending', 3, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iweche', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wechei', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "majesty"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('majesty', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'majesty';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'etunateet', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'etunateng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'telunatennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'telunateet', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lies"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lies', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lies';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lembechek', 'pending', 3, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chubisyet', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "unfailing"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('unfailing', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'unfailing';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tala', 'pending', 8, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chamyeng''ung', 'pending', 6, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireeneng''ung', 'pending', 3, '{"source":"bible-scraper","confidence":0.24}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forget"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forget', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forget';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'utye', 'pending', 3, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'autye', 'pending', 2, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ameutyee', 'pending', 2, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lightning"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lightning', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lightning';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kalyelosyek', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "breath"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('breath', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'breath';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabuuset', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabuusetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thoughts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thoughts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thoughts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabwaatutikyuk', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabwaatutiguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eechen', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hears"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hears', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hears';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kasei', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pride"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pride', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pride';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'menoteet', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forgave"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forgave', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forgave';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaat', 'pending', 2, '{"source":"bible-scraper","confidence":0.429}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengektonywa', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deliver"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deliver', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deliver';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sarwo', 'pending', 7, '{"source":"bible-scraper","confidence":0.426}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "salvation"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('salvation', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'salvation';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yetuneng''ung', 'pending', 7, '{"source":"bible-scraper","confidence":0.426}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yetunennyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "days"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('days', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'days';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuusyek', 'pending', 5, '{"source":"bible-scraper","confidence":0.426}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuusyegap', 'pending', 3, '{"source":"bible-scraper","confidence":0.279}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuusyekyok', 'pending', 2, '{"source":"bible-scraper","confidence":0.171}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuusyekwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.162}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotee', 'pending', 2, '{"source":"bible-scraper","confidence":0.158}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "thanks"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('thanks', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'thanks';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kongoi', 'pending', 8, '{"source":"bible-scraper","confidence":0.423}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oweekyi', 'pending', 3, '{"source":"bible-scraper","confidence":0.345}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, '1a', 'pending', 2, '{"source":"bible-scraper","confidence":0.276}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pet', 'pending', 2, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ezr', 'pending', 2, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, '2a', 'pending', 2, '{"source":"bible-scraper","confidence":0.231}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'jer', 'pending', 2, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'omwachi', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amwaun', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aweekyini', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "wait"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('wait', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'wait';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sapchin', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ageni', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igen', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igeni', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deceitful"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deceitful', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deceitful';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aalsei', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lembech', 'pending', 3, '{"source":"bible-scraper","confidence":0.37}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''elyepta', 'pending', 2, '{"source":"bible-scraper","confidence":0.353}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aaliindet', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aalik', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunek', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "arrows"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('arrows', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'arrows';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipchaboniguk', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipchabonikwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kipchabonikyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "savior"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('savior', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'savior';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yetunennyo', 'pending', 2, '{"source":"bible-scraper","confidence":0.421}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yetunennyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.387}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blameless"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blameless', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blameless';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ititaat', 'pending', 3, '{"source":"bible-scraper","confidence":0.417}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'awendotee', 'pending', 2, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ititaatiin', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wendoti', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "comes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('comes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'comes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyoonei', 'pending', 3, '{"source":"bible-scraper","confidence":0.417}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'punu', 'pending', 3, '{"source":"bible-scraper","confidence":0.278}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shield"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shield', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shield';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'long''ennyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.417}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'long''eet', 'pending', 3, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'long''ennyo', 'pending', 2, '{"source":"bible-scraper","confidence":0.348}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toretindennywa', 'pending', 2, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'long''ennywa', 'pending', 2, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blessed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blessed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blessed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paibai', 'pending', 6, '{"source":"bible-scraper","confidence":0.415}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poiboen', 'pending', 3, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "judgment"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('judgment', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'judgment';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirwooget', 'pending', 3, '{"source":"bible-scraper","confidence":0.414}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "needy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('needy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'needy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalili', 'pending', 3, '{"source":"bible-scraper","confidence":0.414}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibananiat', 'pending', 3, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalildos', 'pending', 2, '{"source":"bible-scraper","confidence":0.296}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiy', 'pending', 5, '{"source":"bible-scraper","confidence":0.263}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'panani', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tinye', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibananook', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "voice"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('voice', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'voice';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tweguunetap', 'pending', 3, '{"source":"bible-scraper","confidence":0.414}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kitwek', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "answer"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('answer', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'answer';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wolwo', 'pending', 4, '{"source":"bible-scraper","confidence":0.412}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iwolwoo', 'pending', 3, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kasa', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rebuke"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rebuke', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rebuke';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kong', 'pending', 4, '{"source":"bible-scraper","confidence":0.41}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kereng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kereetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iger', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "faithful"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('faithful', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'faithful';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiliileen', 'pending', 6, '{"source":"bible-scraper","confidence":0.407}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chechiik', 'pending', 3, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sinners"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sinners', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sinners';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaacheen', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pistoik', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "drink"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('drink', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'drink';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aame', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koee', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aee', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "descendants"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('descendants', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'descendants';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyotennywa', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "children"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Family';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('children', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'children';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lagok', 'pending', 4, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lagokyik', 'pending', 3, '{"source":"bible-scraper","confidence":0.353}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lagogap', 'pending', 3, '{"source":"bible-scraper","confidence":0.316}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "praise"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('praise', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'praise';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'olasu', 'pending', 22, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'okweek', 'pending', 9, '{"source":"bible-scraper","confidence":0.159}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "opened"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('opened', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'opened';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaat', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "chains"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('chains', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'chains';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuguukwak', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "silent"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('silent', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'silent';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amesiis', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'siisei', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kinamak', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "princes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('princes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'princes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pounigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "low"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('low', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'low';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyerootiin', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "serve"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('serve', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'serve';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tye', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "midst"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('midst', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'midst';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwenung''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwenutap', 'pending', 2, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pass"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pass', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pass';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'siirtoi', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kenyiisyekyok', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "strong"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('strong', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'strong';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiim', 'pending', 4, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosiiro', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "paths"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('paths', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'paths';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ortinwegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ortinweguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "terror"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('terror', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'terror';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuiset', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "found"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('found', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'found';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'anyooru', 'pending', 2, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komi', 'pending', 2, '{"source":"bible-scraper","confidence":0.231}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "guilt"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('guilt', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'guilt';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengekwogikyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "old"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('old', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'old';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kaaositu', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "understand"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('understand', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'understand';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iguitos', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "line"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('line', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'line';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iyotennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.4}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "refuge"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('refuge', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'refuge';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amwechini', 'pending', 6, '{"source":"bible-scraper","confidence":0.393}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ii', 'pending', 4, '{"source":"bible-scraper","confidence":0.188}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mwechin', 'pending', 2, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mighty"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mighty', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mighty';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuktaet', 'pending', 5, '{"source":"bible-scraper","confidence":0.392}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gives"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gives', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gives';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igoochin', 'pending', 3, '{"source":"bible-scraper","confidence":0.387}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "strength"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('strength', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'strength';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimnateet', 'pending', 6, '{"source":"bible-scraper","confidence":0.386}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimnateennyu', 'pending', 4, '{"source":"bible-scraper","confidence":0.327}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "seek"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('seek', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'seek';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cheeng''ei', 'pending', 5, '{"source":"bible-scraper","confidence":0.385}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "exalted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('exalted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'exalted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tororitu', 'pending', 3, '{"source":"bible-scraper","confidence":0.385}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'isiir', 'pending', 2, '{"source":"bible-scraper","confidence":0.32}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingoeet', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingotororit', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ways"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ways', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ways';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ortinwekyuk', 'pending', 4, '{"source":"bible-scraper","confidence":0.381}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ortinwekyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "work"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('work', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'work';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'euneguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunekyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deserve"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deserve', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deserve';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyoljin', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ham"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ham', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ham';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "innocent"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('innocent', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'innocent';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengek', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "obey"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('obey', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'obey';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'asup', 'pending', 3, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'asubi', 'pending', 2, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ariip', 'pending', 2, '{"source":"bible-scraper","confidence":0.276}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "yours"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('yours', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'yours';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'neng''ung', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cheguuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "guard"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('guard', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'guard';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riip', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "merciful"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('merciful', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'merciful';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireena', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "mountain"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('mountain', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'mountain';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tulweennyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tulweeng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tulweet', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "feared"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('feared', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'feared';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiywei', 'pending', 2, '{"source":"bible-scraper","confidence":0.375}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "knows"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('knows', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'knows';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingen', 'pending', 3, '{"source":"bible-scraper","confidence":0.37}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forevermore"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forevermore', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forevermore';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nguno', 'pending', 3, '{"source":"bible-scraper","confidence":0.37}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobooch', 'pending', 3, '{"source":"bible-scraper","confidence":0.345}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "anger"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('anger', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'anger';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nereegekyik', 'pending', 4, '{"source":"bible-scraper","confidence":0.368}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koroomnatetap', 'pending', 2, '{"source":"bible-scraper","confidence":0.188}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nereegegap', 'pending', 2, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "said"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('said', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'said';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amwa', 'pending', 4, '{"source":"bible-scraper","confidence":0.368}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ale', 'pending', 7, '{"source":"bible-scraper","confidence":0.347}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cause"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cause', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cause';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puch', 'pending', 5, '{"source":"bible-scraper","confidence":0.367}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'arebee', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "dwell"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('dwell', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'dwell';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komeny', 'pending', 3, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atebee', 'pending', 2, '{"source":"bible-scraper","confidence":0.231}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amenye', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "eat"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('eat', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'eat';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aam', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobiyong''so', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "soul"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('soul', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'soul';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saboondanyu', 'pending', 13, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ilasu', 'pending', 3, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "spirit"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('spirit', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'spirit';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kabuuseng''ung', 'pending', 2, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "abraham"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('abraham', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'abraham';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiboityondennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "spoke"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('spoke', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'spoke';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'twek', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "spread"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('spread', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'spread';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iito', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lands"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lands', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lands';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emotinwek', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "oh"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('oh', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'oh';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nda', 'pending', 2, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forsake"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forsake', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forsake';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amebagaaktaa', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mebagaakta', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "side"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('side', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'side';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komostanyo', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "radiant"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('radiant', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'radiant';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kalilanet', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "toward"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('toward', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'toward';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agutunyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atokyinige', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "alive"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('alive', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'alive';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koriip', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "everything"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('everything', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'everything';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, '1kor', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'olooto', 'pending', 2, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "free"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('free', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'free';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imaanda', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pain"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pain', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pain';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''wanindo', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "saving"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('saving', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'saving';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cheeng''in', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "adversaries"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('adversaries', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'adversaries';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wechech', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pour"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pour', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pour';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rong''ji', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "flourish"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('flourish', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'flourish';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'perurto', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuusyekyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lives"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lives', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lives';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saboonwegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stronghold"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stronghold', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stronghold';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'irimeet', 'pending', 1, '{"source":"bible-scraper","confidence":0.364}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cry"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cry', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cry';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riirekyuk', 'pending', 5, '{"source":"bible-scraper","confidence":0.36}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riirekwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.15}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "things"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('things', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'things';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuguuk', 'pending', 7, '{"source":"bible-scraper","confidence":0.359}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tuguuchuuto', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hands"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hands', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hands';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunekyuk', 'pending', 6, '{"source":"bible-scraper","confidence":0.358}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eunekwak', 'pending', 5, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "delight"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('delight', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'delight';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poiboiyennyu', 'pending', 3, '{"source":"bible-scraper","confidence":0.357}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poiboindanyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'paibaitune', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poiboitune', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'abaibaitune', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "surround"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('surround', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'surround';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yiema', 'pending', 3, '{"source":"bible-scraper","confidence":0.357}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiyiem', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagoyiema', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koyiema', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yiemei', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "praises"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('praises', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'praises';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kalasunet', 'pending', 3, '{"source":"bible-scraper","confidence":0.357}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atyenjini', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aweegun', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "people"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('people', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'people';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piikyik', 'pending', 15, '{"source":"bible-scraper","confidence":0.356}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'piiguk', 'pending', 10, '{"source":"bible-scraper","confidence":0.258}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hidden"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hidden', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hidden';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ung''ootiin', 'pending', 2, '{"source":"bible-scraper","confidence":0.353}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "called"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('called', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'called';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ariirchin', 'pending', 2, '{"source":"bible-scraper","confidence":0.353}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuur', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aguur', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "saved"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('saved', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'saved';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'sar', 'pending', 2, '{"source":"bible-scraper","confidence":0.348}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shame"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shame', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shame';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kolilaanso', 'pending', 4, '{"source":"bible-scraper","confidence":0.348}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "maker"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('maker', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'maker';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yai', 'pending', 3, '{"source":"bible-scraper","confidence":0.345}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "way"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('way', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'way';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ooreet', 'pending', 5, '{"source":"bible-scraper","confidence":0.34}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ooreetap', 'pending', 3, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "righteousness"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('righteousness', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'righteousness';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imandanyi', 'pending', 5, '{"source":"bible-scraper","confidence":0.339}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "evil"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('evil', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'evil';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaityet', 'pending', 6, '{"source":"bible-scraper","confidence":0.338}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaityo', 'pending', 5, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ya', 'pending', 5, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "net"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('net', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'net';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konam', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "time"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('time', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'time';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kagoit', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "true"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('true', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'true';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''olyootap', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "throughout"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('throughout', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'throughout';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kata', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "miracles"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('miracles', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'miracles';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwang''utiguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "enthroned"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('enthroned', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'enthroned';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tebee', 'pending', 3, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'itebee', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "die"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('die', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'die';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mee', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "almost"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('almost', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'almost';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'neegit', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "affliction"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('affliction', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'affliction';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'nyalildanyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "afar"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('afar', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'afar';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'loo', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shine"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shine', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shine';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iluu', 'pending', 2, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "glad"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('glad', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'glad';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingogaskei', 'pending', 3, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingoboiboitu', 'pending', 3, '{"source":"bible-scraper","confidence":0.294}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "far"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('far', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'far';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amelooitena', 'pending', 2, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kolooegitu', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "conspire"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('conspire', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'conspire';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korwooch', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "pursue"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('pursue', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'pursue';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'onwo', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oon', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "delivers"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('delivers', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'delivers';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosaru', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saru', 'pending', 3, '{"source":"bible-scraper","confidence":0.323}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ruin"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ruin', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ruin';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingoweektagei', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "perish"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('perish', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'perish';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lustos', 'pending', 2, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kolusyo', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puunigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'petos', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'petei', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fleeting"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fleeting', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fleeting';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'peetuusyekyuk', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "decay"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('decay', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'decay';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''emisyet', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "honor"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('honor', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'honor';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuura', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iloswa', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "regard"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('regard', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'regard';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koroomen', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "saves"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('saves', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'saves';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kosarwo', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "broke"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('broke', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'broke';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iri', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "abounding"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('abounding', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'abounding';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireenetapkei', 'pending', 1, '{"source":"bible-scraper","confidence":0.333}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "high"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('high', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'high';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'miising', 'pending', 11, '{"source":"bible-scraper","confidence":0.331}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "turned"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('turned', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'turned';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'let', 'pending', 4, '{"source":"bible-scraper","confidence":0.327}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'wal', 'pending', 2, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hide"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hide', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hide';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ameung''ena', 'pending', 2, '{"source":"bible-scraper","confidence":0.32}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iung''ena', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ung''ena', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "call"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('call', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'call';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aguurin', 'pending', 4, '{"source":"bible-scraper","confidence":0.311}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aguure', 'pending', 2, '{"source":"bible-scraper","confidence":0.195}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "say"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('say', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'say';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingomwa', 'pending', 5, '{"source":"bible-scraper","confidence":0.31}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koleen', 'pending', 3, '{"source":"bible-scraper","confidence":0.203}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "oppressed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('oppressed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'oppressed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kisastae', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiusei', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "secret"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('secret', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'secret';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ung''oot', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "labor"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('labor', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'labor';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poisyennyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "loved"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('loved', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'loved';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'cham', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "perished"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('perished', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'perished';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ek', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heritage"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heritage', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heritage';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poroteet', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "songs"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('songs', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'songs';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyenwogik', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyenwogigap', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tyendap', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "devise"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('devise', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'devise';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaitwogik', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "proclaim"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('proclaim', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'proclaim';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mwaitoi', 'pending', 2, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yeityo', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amwaitoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "yourself"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('yourself', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'yourself';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibartoige', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ile', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "blessings"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('blessings', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'blessings';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igoochini', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "protect"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('protect', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'protect';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingoriibo', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "scorn"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('scorn', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'scorn';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iteweeri', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "endure"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('endure', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'endure';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kirosya', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "marvelous"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('marvelous', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'marvelous';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kwong''eet', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "formed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('formed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'formed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiyaei', 'pending', 1, '{"source":"bible-scraper","confidence":0.308}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "presence"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('presence', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'presence';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taing''ung', 'pending', 4, '{"source":"bible-scraper","confidence":0.304}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'taitap', 'pending', 3, '{"source":"bible-scraper","confidence":0.204}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "words"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('words', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'words';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aleeguk', 'pending', 3, '{"source":"bible-scraper","confidence":0.303}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aleegap', 'pending', 3, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aleek', 'pending', 3, '{"source":"bible-scraper","confidence":0.256}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''aleekyuk', 'pending', 2, '{"source":"bible-scraper","confidence":0.242}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "protects"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('protects', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'protects';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riibei', 'pending', 2, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "citadels"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('citadels', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'citadels';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eecheen', 'pending', 2, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "destroy"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('destroy', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'destroy';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''em', 'pending', 2, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobara', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''eme', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''emei', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "glory"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('glory', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'glory';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teegisto', 'pending', 5, '{"source":"bible-scraper","confidence":0.3}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'toroornatennyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "desire"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('desire', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'desire';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mageetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "covered"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('covered', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'covered';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ilaakyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "desert"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('desert', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'desert';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'turguito', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sacrifice"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sacrifice', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sacrifice';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'korosegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agoitoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "splendor"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('splendor', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'splendor';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tiliilindo', 'pending', 2, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'teegistang''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "know"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('know', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'know';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'angen', 'pending', 3, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'onai', 'pending', 2, '{"source":"bible-scraper","confidence":0.15}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "compassion"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('compassion', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'compassion';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rireenosyeguk', 'pending', 2, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chamyet', 'pending', 2, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "watch"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('watch', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'watch';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riibindet', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'riibin', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konyekyik', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sleep"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sleep', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sleep';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rwondo', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'anuuch', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "govern"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('govern', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'govern';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pou', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "arm"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Body';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('arm', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'arm';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'euut', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "truth"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('truth', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'truth';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imanit', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tent"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tent', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tent';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'emait', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "taken"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('taken', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'taken';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'alilan', 'pending', 1, '{"source":"bible-scraper","confidence":0.286}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "foes"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('foes', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'foes';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puunikyik', 'pending', 3, '{"source":"bible-scraper","confidence":0.279}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'puunikwak', 'pending', 2, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trusts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trusts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trusts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imang''u', 'pending', 2, '{"source":"bible-scraper","confidence":0.276}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "seen"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('seen', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'seen';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ageer', 'pending', 2, '{"source":"bible-scraper","confidence":0.273}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "long"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('long', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'long';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotyanit', 'pending', 5, '{"source":"bible-scraper","confidence":0.27}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kot', 'pending', 5, '{"source":"bible-scraper","confidence":0.189}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shout"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shout', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shout';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kutitap', 'pending', 2, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ooren', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'otyen', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "prosperity"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('prosperity', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'prosperity';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'poroteetap', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "delivered"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('delivered', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'delivered';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kesar', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chamaniguk', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iwolwech', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "look"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('look', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'look';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igeer', 'pending', 2, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "close"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('close', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'close';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'neegitee', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trusted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trusted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trusted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'imang''un', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "deliverance"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('deliverance', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'deliverance';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yetunet', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "return"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('return', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'return';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'weeksei', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rest"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rest', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rest';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kityo', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "favor"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('favor', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'favor';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'karaaranindap', 'pending', 1, '{"source":"bible-scraper","confidence":0.267}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "power"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('power', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'power';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimnateennyi', 'pending', 3, '{"source":"bible-scraper","confidence":0.263}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimnateng''ung', 'pending', 3, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "fall"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('fall', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'fall';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobutyo', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingobutyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ibutos', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "established"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('established', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'established';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kigogimiit', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotebi', 'pending', 2, '{"source":"bible-scraper","confidence":0.231}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igimit', 'pending', 2, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "amen"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('amen', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'amen';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iberuurot', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "cannot"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('cannot', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'cannot';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'twegu', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keertoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kimuuchi', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amuuchi', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "tell"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('tell', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'tell';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amwaita', 'pending', 2, '{"source":"bible-scraper","confidence":0.261}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aboortoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "see"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('see', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'see';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keerei', 'pending', 5, '{"source":"bible-scraper","confidence":0.26}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igeere', 'pending', 3, '{"source":"bible-scraper","confidence":0.159}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "gave"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('gave', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'gave';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igoito', 'pending', 2, '{"source":"bible-scraper","confidence":0.258}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igoochi', 'pending', 4, '{"source":"bible-scraper","confidence":0.203}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "desires"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('desires', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'desires';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'machei', 'pending', 2, '{"source":"bible-scraper","confidence":0.258}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sky"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sky', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sky';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'parak', 'pending', 3, '{"source":"bible-scraper","confidence":0.256}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "ones"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('ones', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'ones';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kesweegap', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "declare"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('declare', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'declare';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komwaita', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kalasuneng''ung', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "forgot"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('forgot', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'forgot';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiga', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "flee"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('flee', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'flee';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ano', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "shaken"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('shaken', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'shaken';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koi', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keisto', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'istoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rejected"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rejected', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rejected';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'eesyo', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "consider"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('consider', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'consider';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'obwaat', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ariibe', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komyee', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "offerings"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('offerings', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'offerings';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igoitoi', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "follow"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('follow', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'follow';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kobendatee', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "exalt"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('exalt', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'exalt';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'otoroor', 'pending', 1, '{"source":"bible-scraper","confidence":0.25}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "god"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('god', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'god';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamuktaindennyu', 'pending', 26, '{"source":"bible-scraper","confidence":0.245}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "rejoice"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('rejoice', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'rejoice';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingobaibait', 'pending', 3, '{"source":"bible-scraper","confidence":0.244}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'koboiboitu', 'pending', 3, '{"source":"bible-scraper","confidence":0.233}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "live"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('live', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'live';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'asabe', 'pending', 3, '{"source":"bible-scraper","confidence":0.244}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'asap', 'pending', 2, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'menyei', 'pending', 3, '{"source":"bible-scraper","confidence":0.194}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "speak"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('speak', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'speak';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''alaali', 'pending', 2, '{"source":"bible-scraper","confidence":0.242}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''alaale', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ang''alaal', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sins"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sins', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sins';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tengekwogik', 'pending', 2, '{"source":"bible-scraper","confidence":0.24}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amebwaat', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "beings"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('beings', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'beings';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kal', 'pending', 2, '{"source":"bible-scraper","confidence":0.24}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kiimeen', 'pending', 2, '{"source":"bible-scraper","confidence":0.214}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tos', 'pending', 2, '{"source":"bible-scraper","confidence":0.15}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "himself"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('himself', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'himself';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'leen', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'muguleldanyi', 'pending', 2, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "open"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('open', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'open';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ing''aanye', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "known"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('known', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'known';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'konaak', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "remembered"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('remembered', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'remembered';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibwaati', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "music"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('music', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'music';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'urerendos', 'pending', 1, '{"source":"bible-scraper","confidence":0.235}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keeweekyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "stand"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('stand', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'stand';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tonondos', 'pending', 2, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tononee', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kotonon', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''oo', 'pending', 2, '{"source":"bible-scraper","confidence":0.157}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'atonon', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tononi', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "destroyed"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('destroyed', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'destroyed';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keng''em', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "walk"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('walk', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'walk';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pendoti', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "promises"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('promises', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'promises';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kota', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "corrupt"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('corrupt', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'corrupt';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'agenge', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'yaei', 'pending', 2, '{"source":"bible-scraper","confidence":0.186}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "trust"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('trust', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'trust';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'amang''un', 'pending', 3, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'omang''u', 'pending', 3, '{"source":"bible-scraper","confidence":0.217}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "acts"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('acts', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'acts';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tee', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "together"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('together', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'together';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kibagenge', 'pending', 1, '{"source":"bible-scraper","confidence":0.222}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'irwoochi', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lips"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lips', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lips';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kuting''ung', 'pending', 2, '{"source":"bible-scraper","confidence":0.216}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "one"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Numbers';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('one', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'one';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'chii', 'pending', 9, '{"source":"bible-scraper","confidence":0.213}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "come"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('come', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'come';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'obwa', 'pending', 5, '{"source":"bible-scraper","confidence":0.212}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "show"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('show', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'show';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'iriiree', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'aboorchini', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'anai', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "looked"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('looked', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'looked';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogeer', 'pending', 1, '{"source":"bible-scraper","confidence":0.211}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "place"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('place', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'place';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ole', 'pending', 9, '{"source":"bible-scraper","confidence":0.209}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "afflicted"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('afflicted', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'afflicted';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'talaen', 'pending', 2, '{"source":"bible-scraper","confidence":0.207}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "saw"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('saw', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'saw';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'keer', 'pending', 2, '{"source":"bible-scraper","confidence":0.207}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "according"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('according', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'according';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'uu', 'pending', 12, '{"source":"bible-scraper","confidence":0.205}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "says"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('says', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'says';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'le', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mwaei', 'pending', 2, '{"source":"bible-scraper","confidence":0.171}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "upright"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('upright', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'upright';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'oboiboitu', 'pending', 1, '{"source":"bible-scraper","confidence":0.2}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'lititen', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'mugulelwek', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "poor"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('poor', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'poor';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tinyei', 'pending', 5, '{"source":"bible-scraper","confidence":0.198}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ingosapcho', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'panan', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kinyaliili', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "water"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Nature';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('water', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'water';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'inagi', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'rootei', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hallelu"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hallelu', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hallelu';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'acheek', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "path"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('path', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'path';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ooreennyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "themselves"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('themselves', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'themselves';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'saboondanyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "lift"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('lift', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'lift';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'anamjini', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "sin"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('sin', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'sin';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''oogistonyu', 'pending', 1, '{"source":"bible-scraper","confidence":0.19}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ang''aanye', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "go"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'Actions';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('go', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'go';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'pendi', 'pending', 3, '{"source":"bible-scraper","confidence":0.189}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "places"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('places', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'places';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'komoswek', 'pending', 1, '{"source":"bible-scraper","confidence":0.182}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "given"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('given', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'given';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igoono', 'pending', 1, '{"source":"bible-scraper","confidence":0.174}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "hope"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('hope', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'hope';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ageniin', 'pending', 2, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kamang''unennyu', 'pending', 2, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "end"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('end', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'end';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'egu', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "extol"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('extol', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'extol';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'tainnyi', 'pending', 1, '{"source":"bible-scraper","confidence":0.167}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "heard"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('heard', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'heard';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'kogogas', 'pending', 1, '{"source":"bible-scraper","confidence":0.16}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'igas', 'pending', 1, '{"source":"bible-scraper","confidence":0.154}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

  -- "keep"
  SELECT id INTO v_cat_id FROM public.categories WHERE name = 'General';
  INSERT INTO public.words (english_word, category_id, status)
    VALUES ('keep', v_cat_id, 'active')
    ON CONFLICT (english_word) DO NOTHING;
  SELECT id INTO v_word_id FROM public.words WHERE english_word = 'keep';
  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)
    VALUES (v_word_id, 'ng''atuutikyik', 'pending', 2, '{"source":"bible-scraper","confidence":0.15}'::jsonb)
    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;

END $$;

COMMIT;

-- Summary: 772 words, 1328 translations