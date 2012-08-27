# Redmine CUT tag plugin

This redmine plugin adds the ability to use a CUT macros in the issue description

## Screenshot

![CUT macros in the issue description](https://github.com/Undev/redmine_cut_tag/raw/master/screenshot.png)

## Install

``script/plugin install git://github.com/Undev/redmine_cut_tag.git``

## Usage

Wrap a text block with ``{{cut_start(title)}}`` and ``{{cut_end}}`` macros and the block will be hidden by default.

### Example

Text surrounded with ``{{cut_start(title)}}`` and ``{{cut_end}}``

    {{cut_start}}
    This text will be hidden by default
    {{cut_end}}

will transform to:
![without title](https://github.com/Undev/redmine_cut_tag/raw/master/screenshot_wo_title.png)


You can use optional title for hidden block:

    {{cut_start(Application logs)}}
    Rendered tagging/_tagcloud (4.4ms)
    Query Load Including Associations (0.1ms)
    Rendered issues/_sidebar (17.2ms)
    {{cut_end}}

will transform to:
![without title](https://github.com/Undev/redmine_cut_tag/raw/master/screenshot_with_title.png)

