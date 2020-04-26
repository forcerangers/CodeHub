<aura:component implements="force:appHostable,flexipage:availableForAllPageTypes,flexipage:availableForRecordHome,force:hasRecordId,forceCommunity:availableForAllPageTypes,force:lightningQuickAction" access="global" >
    <aura:handler name="change" value="{!v.countryInfo}" action="{!c.ChangeFunction}"/>
    <aura:attribute name="countryInfo" type="object"/>
    <aura:attribute name="country" type="String"/>
    <aura:attribute name="UN_Code" type="String"/>
    <aura:attribute name="iso2" type="String"/>
    <aura:attribute name="iso3" type="String"/>
    <aura:attribute name="Latitude" type="String"/>
    <aura:attribute name="Longitude" type="String"/>
    <aura:attribute name="FlagUrl" type="String"/> 
    <aura:attribute name ="SelectedCountry" type="String"/>
    <article class="slds-card">
        <div class="slds-card__header slds-grid info">
            <header class="slds-media slds-media_center slds-has-flexi-truncate">
                <div class="slds-media__body">
                    <span style= "font-size:25px;">Country Information</span>
                    <img class="Img_Size" src="{!v.FlagUrl}"/>
                </div>
            </header>
        </div>
        <table class="slds-table slds-table_cell-buffer slds-table_bordered slds_custom">
            <tbody>
                <tr class="slds-hint-parent">
                    <th data-label="Covid-19 Details" scope="row">
                        <div class="slds-truncate FontSize" title="Country Name">
                            <a href="javascript:void(0);" tabindex="-1">Country Name</a>
                            <span style="float:right"><ui:outputText value="{!v.country}"/></span>
                            
                        </div>
                    </th>
                </tr>
                <tr class="slds-hint-parent">
                    <th data-label="Covid-19 Details" scope="row">
                        <div class="slds-truncate FontSize" title="UN Code">
                            <a href="javascript:void(0);" tabindex="-1">UN Code</a>
                            <span style="float:right"><ui:outputText value="{!v.UN_Code}"/></span>
                            
                        </div>
                    </th>
                </tr>
                <tr class="slds-hint-parent">
                    <th data-label="Covid-19 Details" scope="row">
                        <div class="slds-truncate FontSize" title="Alpha 2 Code">
                            <a href="javascript:void(0);" tabindex="-1">Alpha 2 Code</a>
                            <span style="float:right"><ui:outputText value="{!v.iso2}"/> </span>
                        </div>
                    </th>
                </tr>
                <tr class="slds-hint-parent">
                    <th data-label="Covid-19 Details" scope="row">
                        <div class="slds-truncate FontSize" title="Alpha 3 Code">
                            <a href="javascript:void(0);" tabindex="-1">Alpha 3 Code</a>
                            <span style="float:right"><ui:outputText value="{!v.iso2}"/></span>
                             
                        </div>
                    </th>
                </tr>
                <tr class="slds-hint-parent">
                    <th data-label="Covid-19 Details" scope="row">
                        <div class="slds-truncate FontSize" title="Latitude and Longitude">
                            <a href="javascript:void(0);" tabindex="-1">Latitude and Longitude</a>
                            <span style="float:right"><ui:outputText value="{!v.Latitude}"/> / <ui:outputText value="{!v.Longitude}"/></span>
                            
                        </div>
                    </th>
                </tr>
            </tbody>
        </table>
    </article>
</aura:component>
