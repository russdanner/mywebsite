<#import "/templates/system/common/cstudio-support.ftl" as studio />

<div <@studio.componentAttr path=contentModel.storeUrl ice=true /> >
	<h2>${contentModel.symbol}</h2>
	<h1>${ticker.AskPrice}</h1>
</div>
