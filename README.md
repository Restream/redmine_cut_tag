# Redmine CUT tag plugin

This redmine plugin adds the ability to use a CUT macros in the issue description

## Install

script/plugin install git://github.com/alvila/redmine_reminder.git

## Usage

Wrap a text block with {{cut_start(title)}} and {{cut_end}} macros and the block will be hidden by default.


### Example

  {{cut_start}}
  This text will be hidden by default
  {{cut_end}}

You can use optional title for hidden block:

  {{cut_start(Application logs)}}
  Rendered tagging/_tagcloud (4.4ms)
    Query Load Including Associations (0.1ms)   SELECT `queries`.`id` AS t0_r0, `queries`.`project_id` AS t0_r1, `queries`.`name` AS t0_r2, `queries`.`filters` AS t0_r3, `queries`.`user_id` AS t0_r4, `queries`.`is_public` AS t0_r5, `queries`.`column_names` AS t0_r6, `queries`.`sort_criteria` AS t0_r7, `queries`.`group_by` AS t0_r8, `projects`.`id` AS t1_r0, `projects`.`name` AS t1_r1, `projects`.`description` AS t1_r2, `projects`.`homepage` AS t1_r3, `projects`.`is_public` AS t1_r4, `projects`.`parent_id` AS t1_r5, `projects`.`created_on` AS t1_r6, `projects`.`updated_on` AS t1_r7, `projects`.`identifier` AS t1_r8, `projects`.`status` AS t1_r9, `projects`.`lft` AS t1_r10, `projects`.`rgt` AS t1_r11 FROM `queries` LEFT OUTER JOIN `projects` ON `projects`.id = `queries`.project_id WHERE (project_id IS NULL OR project_id = 2) AND ((queries.project_id IS NULL OR (projects.status=1 AND projects.id IN (SELECT em.project_id FROM enabled_modules em WHERE em.name='issue_tracking'))) AND (queries.is_public = 1 OR queries.user_id = 1)) ORDER BY queries.name ASC
  Rendered issues/_sidebar (17.2ms)
  {{cut_end}}
