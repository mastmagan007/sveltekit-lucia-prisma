// New
import dotenv from 'dotenv'
dotenv.config()
import { createClient } from '@supabase/supabase-js'
import { PrismaClient, Property } from '@prisma/client'
import { corsHeaders } from '../../lib/cors'
//import responseData  from '../../lib/api.json'
const supabaseUrl = process.env.SUPABASE_URL
const supabaseKey = process.env.SUPABASE_KEY
const accessToken = process.env.ACCESS_TOKEN

// The rest of your code...

const prisma = new PrismaClient()

const supabase = createClient(supabaseUrl, supabaseKey)

async function downloadMediaAndUploadToStorage(MediaURL, MediaKey,LongDescription, ListingId) {
	const mediaResponse = await fetch(MediaURL)
	const mediaArrayBuffer = await mediaResponse.arrayBuffer()
	const mediaBuffer = Buffer.from(mediaArrayBuffer)

  const fileName = `${LongDescription}_${MediaKey}.jpeg`;
  const { data, error } = await supabase.storage
      .from('levinsCO')
      .upload(`listings/${ListingId}/${fileName}`, mediaBuffer, {
          cacheControl: '3600',
          contentType: 'image/jpeg'
      });

	if (error) {
		console.error('Error uploading media:', error.message)
		return null
	}


	const { data: publicUrlData } = await supabase.storage
		.from('levinsCO')
		.getPublicUrl(`listings/${ListingId}/${fileName}`)
	const { publicUrl } = publicUrlData
	return publicUrl
}

async function getOrCreateProperty(property, mediaUrls) {
		const newProperty = await prisma.property.create({
			data: {
        Listing_id: property.ListingId,
        listing_key: property.ListingKey,
        title: property.UnparsedAddress || null,
        city: property.City || null,
        state: property.StateOrProvince || null,
        addRooms: property.MFR_AdditionalRooms || null,
        area: property.BuildingAreaTotal || null,
        area_units: property.BuildingAreaUnits || null,
        listPrice: property.ListPrice || null,
        type: property.PropertyType || null,
        remarks: property.PublicRemarks || null,
        yearBuilt: property.YearBuilt || null,
        totalRooms: property.MFR_RoomCount || null,
        amenities: property.AssociationAmenities || [],
        utilities: property.Utilities || [],
        securityFeatures: property.SecurityFeatures || [],
        modification_timestamp: property.ModificationTimestamp
          ? new Date(property.ModificationTimestamp)
          : null,
  
        AdditionalParcelsYN: property.AdditionalParcelsYN,
        MFR_AdditionalRooms: property.MFR_AdditionalRooms || null,
        Appliances: property.Appliances || [],
        ArchitecturalStyle: property.ArchitecturalStyle || [],
        AssociationAmenities: property.AssociationAmenities || [],
        AssociationFee: property.AssociationFee || null,
        AssociationFeeFrequency: property.AssociationFeeFrequency || null,
        AssociationFeeIncludes: property.AssociationFeeIncludes || [],
        AssociationName: property.AssociationName || null,
        AssociationYN: property.AssociationYN,
        MFR_AvailableForLeaseYN: property.MFR_AvailableForLeaseYN || null,
        MFR_BackupsRequestedYN: property.MFR_BackupsRequestedYN || null,
        BathroomsFull: property.BathroomsFull || null,
        BathroomsTotalInteger: property.BathroomsTotalInteger || null,
        BedroomsTotal: property.BedroomsTotal || null,
        BuildingAreaSource: property.BuildingAreaSource || null,
        BuildingAreaTotal: property.BuildingAreaTotal || null,
        BuildingAreaUnits: property.BuildingAreaUnits || null,
        MFR_BuildingElevatorYN: property.MFR_BuildingElevatorYN || null,
        BuyerAgentAOR: property.BuyerAgentAOR || null,
        BuyerAgentFullName: property.BuyerAgentFullName || null,
        BuyerAgentKey: property.BuyerAgentKey || null,
        BuyerAgentMlsId: property.BuyerAgentMlsId || null,
        BuyerOfficeKey: property.BuyerOfficeKey || null,
        BuyerOfficeMlsId: property.BuyerOfficeMlsId || null,
        BuyerOfficeName: property.BuyerOfficeName || null,
        Directions: property.Directions || null,
        Latitude: property.Latitude || null,
        Longitude: property.Longitude || null,
        MFR_AssociationFeeRequirement: property.MFR_AssociationFeeRequirement || null,
        MFR_BuildingNameNumber: property.MFR_BuildingNameNumber || null,
        MFR_SWSubdivCommunityName: property.MFR_SWSubdivCommunityName || null,
        MFR_SubdivisionNum: property.MFR_SubdivisionNum || null,
        StreetName: property.StreetName || null,
        StreetNumber: property.StreetNumber || null,
        StreetSuffix: property.StreetSuffix || null,
        UnitNumber: property.UnitNumber || null,
        UnparsedAddress: property.UnparsedAddress || null,
        MlgCanView: property.MlgCanView,
        MlgCanUse: property.MlgCanUse || [],
        OtherStructures: property.OtherStructures || [],
        Ownership: property.Ownership || null,
        ParcelNumber: property.ParcelNumber || null,
        ParkingFeatures: property.ParkingFeatures || [],
        MFR_PetRestrictions: property.MFR_PetRestrictions || null,
        PetsAllowed: property.PetsAllowed || [],
        MFR_PetSize: property.MFR_PetSize || null,
        PhotosChangeTimestamp: property.PhotosChangeTimestamp
          ? new Date(property.PhotosChangeTimestamp)
          : null,
  
        PhotosCount: property.PhotosCount || null,
        PoolPrivateYN: property.PoolPrivateYN || null,
        PostalCode: property.PostalCode || null,
        PostalCodePlus4: property.PostalCodePlus4 || null,
        PreviousListPrice: property.PreviousListPrice || null,
        MFR_PreviousStatus: property.MFR_PreviousStatus || null,
        PriceChangeTimestamp: property.PriceChangeTimestamp
          ? new Date(property.PriceChangeTimestamp)
          : null,
  
        MFR_PropertyDescription: property.MFR_PropertyDescription || null,
        PropertySubType: property.PropertySubType || null,
        BuyerAgencyCompensation: property.BuyerAgencyCompensation || null,
        MFR_CalculatedListPriceByCalculatedSqFt:
          property.MFR_CalculatedListPriceByCalculatedSqFt || null,
        CarportSpaces: property.CarportSpaces || null,
        CarportYN: property.CarportYN,
        MFR_CDDYN: property.MFR_CDDYN || null,
        City: property.City || null,
        CloseDate: property.CloseDate ? new Date(property.CloseDate) : null,
  
        ClosePrice: property.ClosePrice || null,
        MFR_ClosePriceByCalculatedListPriceRatio:
          property.MFR_ClosePriceByCalculatedListPriceRatio || null,
        MFR_ClosePriceByCalculatedSqFt: property.MFR_ClosePriceByCalculatedSqFt || null,
        CoListAgentDirectPhone: property.CoListAgentDirectPhone || null,
        CoListAgentFullName: property.CoListAgentFullName || null,
        CommunityFeatures: property.CommunityFeatures || [],
        MFR_ContractStatus: property.MFR_ContractStatus || null,
        Cooling: property.Cooling || [],
        CountyOrParish: property.CountyOrParish || null,
        CumulativeDaysOnMarket: property.CumulativeDaysOnMarket || null,
        MFR_CurrentPrice: property.MFR_CurrentPrice || null,
        DaysOnMarket: property.DaysOnMarket || null,
        MFR_DaysToClosed: property.MFR_DaysToClosed || null,
        DirectionFaces: property.DirectionFaces || null,
        MFR_DPRURL: property.MFR_DPRURL || null,
        MFR_DPRURL2: property.MFR_DPRURL2 || null,
        MFR_DPRYN: property.MFR_DPRYN || null,
        ElementarySchool: property.ElementarySchool || null,
        MFR_ExpectedClosingDate: property.MFR_ExpectedClosingDate
          ? new Date(property.MFR_ExpectedClosingDate)
          : null,
        FireplaceYN: property.FireplaceYN,
        MFR_FloorNumber: property.MFR_FloorNumber || null,
        Furnished: property.Furnished || null,
        MFR_FutureLandUse: property.MFR_FutureLandUse || null,
        HighSchool: property.HighSchool || null,
        MFR_HomesteadYN: property.MFR_HomesteadYN || null,
        HomeWarrantyYN: property.HomeWarrantyYN,
        InteriorFeatures: property.InteriorFeatures || [],
        InternetAddressDisplayYN: property.InternetAddressDisplayYN,
        InternetAutomatedValuationDisplayYN: property.InternetAutomatedValuationDisplayYN || null,
        InternetEntireListingDisplayYN: property.InternetEntireListingDisplayYN || null,
        ListAgentAOR: property.ListAgentAOR || null,
        ListAgentDirectPhone: property.ListAgentDirectPhone || null,
        ListAgentEmail: property.ListAgentEmail || null,
        ListAgentFax: property.ListAgentFax || null,
        ListAgentFullName: property.ListAgentFullName || null,
        ListAgentKey: property.ListAgentKey || null,
        ListAgentMlsId: property.ListAgentMlsId || null,
        ListAgentOfficePhoneExt: property.ListAgentOfficePhoneExt || null,
        ListAgentPager: property.ListAgentPager || null,
        ListAgentURL: property.ListAgentURL || null,
        ListAOR: property.ListAOR || null,
        ListingAgreement: property.ListingAgreement || null,
        ListingContractDate: property.ListingContractDate
          ? new Date(property.ListingContractDate)
          : null,
  
        
        ListingKey: property.ListingKey || null,
        OriginatingSystemKey: property.OriginatingSystemKey || null,
        ListOfficeFax: property.ListOfficeFax || null,
        MFR_ListOfficeHeadOfficeKeyNumeric: property.MFR_ListOfficeHeadOfficeKeyNumeric || null,
        ListOfficeKey: property.ListOfficeKey || null,
        ListOfficeMlsId: property.ListOfficeMlsId || null,
        ListOfficeName: property.ListOfficeName || null,
        ListOfficePhone: property.ListOfficePhone || null,
        ListPrice: property.ListPrice || null,
        LivingArea: property.LivingArea || null,
        LivingAreaSource: property.LivingAreaSource || null,
        LivingAreaUnits: property.LivingAreaUnits || null,
        LotFeatures: property.LotFeatures || [],
        LotSizeAcres: property.LotSizeAcres || null,
        LotSizeSquareFeet: property.LotSizeSquareFeet || null,
        MFR_MaxPetWeight: property.MFR_MaxPetWeight || null,
        MiddleOrJuniorSchool: property.MiddleOrJuniorSchool || null,
        MFR_MillageRate: property.MFR_MillageRate || null,
        MFR_MinimumLease: property.MFR_MinimumLease || null,
        MLSAreaMajor: property.MLSAreaMajor || null,
        MlsStatus: property.MlsStatus || null,
        MFR_MonthlyHOAAmount: property.MFR_MonthlyHOAAmount || null,
        NewConstructionYN: property.NewConstructionYN,
        MFR_NonRepCompensation: property.MFR_NonRepCompensation || null,
        MFR_NumberOfPets: property.MFR_NumberOfPets || null,
        MFR_NumTimesperYear: property.MFR_NumTimesperYear || null,
        OffMarketDate: property.OffMarketDate ? new Date(property.OffMarketDate) : null,
  
        OriginalEntryTimestamp: property.OriginalEntryTimestamp
          ? new Date(property.OriginalEntryTimestamp)
          : null,
  
        OriginalListPrice: property.OriginalListPrice || null,
        MFR_OriginatingSystemName_: property.MFR_OriginatingSystemName_ || null,
        MFR_OriginatingSystemTimestamp: property.MFR_OriginatingSystemTimestamp
          ? new Date(property.MFR_OriginatingSystemTimestamp)
          : null,
  
        MFR_OtherExemptionsYN: property.MFR_OtherExemptionsYN || null,
        PropertyType: property.PropertyType || null,
        PublicRemarks: property.PublicRemarks || null,
        PublicSurveyRange: property.PublicSurveyRange || null,
        PublicSurveySection: property.PublicSurveySection || null,
        PurchaseContractDate: property.PurchaseContractDate
          ? new Date(property.PurchaseContractDate)
          : null,
  
        MFR_RATIO_ClosePrice_By_ListPrice: property.MFR_RATIO_ClosePrice_By_ListPrice || null,
        MFR_RATIO_ClosePrice_By_OriginalListPrice:
          property.MFR_RATIO_ClosePrice_By_OriginalListPrice || null,
        MFR_RATIO_CurrentPrice_By_CalculatedSqFt:
          property.MFR_RATIO_CurrentPrice_By_CalculatedSqFt || null,
        RoadFrontageType: property.RoadFrontageType || [],
        MFR_RoomCount: property.MFR_RoomCount || null,
        SecurityFeatures: property.SecurityFeatures || [],
        ShowingRequirements: property.ShowingRequirements || [],
        SpaYN: property.SpaYN || null,
        SpecialListingConditions: property.SpecialListingConditions || [],
        StandardStatus: property.StandardStatus || null,
        StateOrProvince: property.StateOrProvince || null,
        StatusChangeTimestamp: property.StatusChangeTimestamp
          ? new Date(property.StatusChangeTimestamp)
          : null,
  
        StoriesTotal: property.StoriesTotal || null,
        SubdivisionName: property.SubdivisionName || null,
        TaxAnnualAmount: property.TaxAnnualAmount || null,
        TaxBookNumber: property.TaxBookNumber || null,
        TaxLegalDescription: property.TaxLegalDescription || null,
        TaxLot: property.TaxLot || null,
        TaxYear: property.TaxYear || null,
        MFR_TotalAcreage: property.MFR_TotalAcreage || null,
        Township: property.Township || null,
        TransactionBrokerCompensation: property.TransactionBrokerCompensation || null,
        Utilities: property.Utilities || [],
        View: property.View || [],
        MFR_WaterAccess: property.MFR_WaterAccess || null,
        MFR_WaterAccessYN: property.MFR_WaterAccessYN || null,
        MFR_WaterExtras: property.MFR_WaterExtras || null,
        MFR_WaterExtrasYN: property.MFR_WaterExtrasYN || null,
        WaterfrontFeatures: property.WaterfrontFeatures || [],
        WaterfrontYN: property.WaterfrontYN,
        WaterSource: property.WaterSource || [],
        MFR_WaterView: property.MFR_WaterView || null,
        MFR_WaterViewYN: property.MFR_WaterViewYN || null,
        WindowFeatures: property.WindowFeatures || [],
        YearBuilt: property.YearBuilt || null,
        MFR_ZoningCompatibleYN: property.MFR_ZoningCompatibleYN || null,
        MFR_PublicRemarksAgent: property.MFR_PublicRemarksAgent || null,
        MFR_SDEOYN: property.MFR_SDEOYN || null,
        MFR_TotalAnnualFees: property.MFR_TotalAnnualFees || null,
        MFR_TotalMonthlyFees: property.MFR_TotalMonthlyFees || null,
        OriginatingSystemName: property.OriginatingSystemName || null,
        ModificationTimestamp: property.ModificationTimestamp
          ? new Date(property.ModificationTimestamp)
          : null,
  
        Rooms: property.Rooms || {},
        propertyMedia: {
          set: mediaUrls // Setting the media URLs directly as an array in the property creation
        },
      }
		})
		return newProperty
	}


export const load = async ({ fetch }) => {

	try {
		const response = await fetch(
			'https://api.mlsgrid.com/v2/Property?$filter=OriginatingSystemName%20eq%20%27mfrmls%27%20and%20ModificationTimestamp%20gt%202020-12-30T23:59:59.99Z&$expand=Media,Rooms,UnitTypes',
			{
				headers: {
					Authorization: `Bearer ${accessToken}`,
					...corsHeaders,
					'Content-Type': 'application/json'
				}
			}
		)

		const responseData = await response.json();
        if (responseData.hasOwnProperty('value')) {
            const { value } = responseData;

            for (const property of value) {
                const mediaUrls = [];
                const media = property.Media;
               
                

                const existingProperty = await prisma.property.findUnique({
                    where: { Listing_id: property.ListingId }
                });

                if (existingProperty) {
                    console.log('Property already exists:', existingProperty.title);
                } else {
                  
                    for (const mediaItem of media) {
                     
                        const { MediaURL, MediaKey, LongDescription } = mediaItem;
                        const publicUrl = await downloadMediaAndUploadToStorage(
                            MediaURL,
                            MediaKey,   
                            LongDescription,
                            property.ListingId,                
                        );

                        if (publicUrl) {
                            mediaUrls.push(publicUrl);
                            console.log('Media URL pushed');
                        }
                    }

                    if (mediaUrls.length > 0) {
                        const newProperty = await getOrCreateProperty(property, mediaUrls);
                        console.log('New Property created:', newProperty.title);
                    }
                }
            }
        } else {
            console.error('Error fetching data: Invalid response format');
        }
    } catch (error) {
        console.error('Error fetching data:', error);
    }
};






// Fetch

// import type { Actions, PageServerLoad } from './$types'

// import { error, fail, redirect } from '@sveltejs/kit'

// export const load: PageServerLoad = async () => {
// 	const properties = await prisma.property.findMany()
// 	console.log(properties)

// 	return {
// 		properties
// 	}
// }

// export const load: PageServerLoad = async () => {
// 	const getProducts = async () => {
// 		const data = await prisma.property.findMany();
// 		return data
// 	}

// 	return {
// 		properties: getProducts(),
// 	}
// }
