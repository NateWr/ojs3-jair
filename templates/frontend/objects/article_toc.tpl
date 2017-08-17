{**
 * templates/frontend/objects/issue_toc.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief View of an Issue which displays a full table of contents.
 *
 * @uses $issue Issue The issue
 * @uses $issueTitle string Title of the issue. May be empty
 * @uses $issueSeries string Vol/No/Year string for the issue
 * @uses $issueGalleys array Galleys for the entire issue
 * @uses $hasAccess bool Can this user access galleys for this context?
 * @uses $showGalleyLinks bool Show galley links to users without access?
 *}
<div class="issue-toc">
    {* Articles *}
    {if count($articles)}
	<div class="media-list">
	    {foreach from=$articles item=article}
		{include file="frontend/objects/article_summary.tpl"}
	    {/foreach}
        </div>
    {/if}
</div><!-- .issue-toc -->
