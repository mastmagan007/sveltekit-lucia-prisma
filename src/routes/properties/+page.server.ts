

// // Old
// import { createClient } from '@supabase/supabase-js';
// import { PrismaClient } from '@prisma/client';
// import { corsHeaders } from '../../lib/cors'
// const supabaseUrl = 'https://glkotvdjsehkcmgfuacc.supabase.co';
// const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa290dmRqc2Voa2NtZ2Z1YWNjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzk2OTMyNzgsImV4cCI6MTk5NTI2OTI3OH0.bG2QPf80cTUwVGkQCfbYe0w8SrfgzzWS_izA1QAxoRE';
// const accessToken = '1155d6a3502a9afa0aadd8c7ab9f0a9af4d83f11';
// const prisma = new PrismaClient();

// export const load = async ({ fetch }) => {
//   const supabase = createClient(supabaseUrl, supabaseKey);

//   try {
//     const response = await fetch('https://api.mlsgrid.com/v2/Property?$filter=OriginatingSystemName%20eq%20%27mfrmls%27%20and%20ModificationTimestamp%20gt%202020-12-30T23:59:59.99Z&$expand=Media,Rooms,UnitTypes', {
//       headers: {
//         Authorization: `Bearer ${accessToken}`,
//         ...corsHeaders,
//         'Content-Type': 'application/json',
//       },
//     });

//     const responseData = await response.json();

//     if (responseData.hasOwnProperty('value')) {
//       const { value } = responseData;

//       for (const property of value) {
//         const media = property.Media;

//         // Upload each media file to the Supabase storage bucket
//         for (const mediaItem of media) {
//           const { MediaURL, MediaKey } = mediaItem;
       
//           //Download the media file
//           const mediaResponse = await fetch(MediaURL);
         
//           const mediaArrayBuffer = await mediaResponse.arrayBuffer();
//           const mediaBuffer = Buffer.from(mediaArrayBuffer);

//           const fileName = MediaKey + '.jpeg';
//           //Upload the media file to Supabase storage bucket
//           const { error } = await supabase.storage.from('levinsCO').upload( `myProperties/${fileName}`, mediaBuffer,{   
//             cacheControl: '3600', 
//             contentType:'image/jpeg'     
          
//           } );

//           if (error) {
//             console.error('Error uploading media:', error.message);
//           } else {
//             console.log('Media uploaded successfully:', fileName);
       

//             const {data} = supabase.storage.from('levinsCO').getPublicUrl(`myProperties/${fileName}`);
            
//         const{publicUrl} = data
//           if (publicUrl) {
//             console.log('Public URL:', publicUrl);

//             // Create a new Media record in the Prisma database
//             const newMedia = await prisma.media.create({
//               data: {
//                 myMediaURL: publicUrl,
//                 MediaKey,
//                 Order: mediaItem.Order,
//                 LongDescription: mediaItem.LongDescription,
//                 MediaType: mediaItem.MediaType,
//                 ImageWidth: mediaItem.ImageWidth,
//                 ImageHeight: mediaItem.ImageHeight,
//                 ImageSizeDescription: mediaItem.ImageSizeDescription,
//                 MediaModificationTimestamp: mediaItem.MediaModificationTimestamp,
//                 property: {
//                   connect: { id: property.id } // Connect the media to the corresponding property
//                 }
//               }
//             });

//             console.log('Media record created:', newMedia);
//           }
//         }
//       }

//         // Extract the desired fields and map them to a new array
//         const propertyData = {
//             listing_id: property.ListingKey ,
//             title: property.UnparsedAddress !== undefined ? property.UnparsedAddress : null,
//             city: property.City !== undefined ? property.City : null,
//             state: property.StateOrProvince !== undefined ? property.StateOrProvince : null,
//             addRooms: property.MFR_AdditionalRooms !== undefined ? property.MFR_AdditionalRooms : null,
//             area: property.BuildingAreaTotal !== undefined ? property.BuildingAreaTotal : null,
//             area_units: property.BuildingAreaUnits !== undefined ? property.BuildingAreaUnits : null,
//             listPrice: property.ListPrice !== undefined ? property.ListPrice : null,
//             type: property.PropertyType !== undefined ? property.PropertyType : null,
//             remarks: property.PublicRemarks !== undefined ? property.PublicRemarks : null,
//             yearBuilt: property.YearBuilt !== undefined ? property.YearBuilt : null,
//             totalRooms: property.MFR_RoomCount !== undefined ? property.MFR_RoomCount : null,
//             amenities: property.AssociationAmenities !== undefined ? property.AssociationAmenities : [],
//             utilities: property.Utilities !== undefined ? property.Utilities : [],
//             securityFeatures: property.SecurityFeatures !== undefined ? property.SecurityFeatures : [],
//             modification_timestamp: property.ModificationTimestamp !== undefined ? property.ModificationTimestamp : null,
//         };

//         //Push the property data to the database using Prisma Client
//         await prisma.property.create({ data: propertyData });
//       }

//       console.log('Data saved to the database successfully.');
//     } else {
//       console.error('Error fetching data: Invalid response format');
//     }
//   } catch (error) {
//     console.error('Error fetching data:', error);
//   }
// };


// New

import { createClient } from '@supabase/supabase-js';
import { PrismaClient , Property } from '@prisma/client';
import { corsHeaders } from '../../lib/cors'
import responseData  from '../../lib/api.json'
const supabaseUrl = 'https://glkotvdjsehkcmgfuacc.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa290dmRqc2Voa2NtZ2Z1YWNjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzk2OTMyNzgsImV4cCI6MTk5NTI2OTI3OH0.bG2QPf80cTUwVGkQCfbYe0w8SrfgzzWS_izA1QAxoRE';
const accessToken = '1155d6a3502a9afa0aadd8c7ab9f0a9af4d83f11';
const prisma = new PrismaClient();

const supabase = createClient(supabaseUrl, supabaseKey);

async function downloadMediaAndUploadToStorage(MediaURL, MediaKey) {
  const mediaResponse = await fetch(MediaURL);
  const mediaArrayBuffer = await mediaResponse.arrayBuffer();
  const mediaBuffer = Buffer.from(mediaArrayBuffer);

  const fileName = MediaKey + '.jpeg';
  const { data, error } = await supabase.storage.from('levinsCO').upload(`myProperties/${fileName}`, mediaBuffer, {
    cacheControl: '3600',
    contentType: 'image/jpeg',
  });

  if (error) {
    console.error('Error uploading media:', error.message);
    return null;
  }

  console.log('Media uploaded successfully:', fileName);
  const { data: publicUrlData } = await supabase.storage.from('levinsCO').getPublicUrl(`myProperties/${fileName}`);
  const { publicUrl } = publicUrlData;
  return publicUrl;
}


async function getOrCreateProperty(property, mediaUrls) {
  const existingProperty = await prisma.property.findUnique({
    where: { listing_id: property.ListingKey }
  });

  if (existingProperty) {
    return existingProperty;
  } else {
    const newProperty = await prisma.property.create({
      data: {
        listing_id: property.ListingKey,
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
        modification_timestamp: property.ModificationTimestamp || null,
        propertyMedia : {
          set: mediaUrls, // Setting the media URLs directly as an array in the property creation
        }
      },
    });

    console.log('New Property created:', newProperty);
    return newProperty;
  }
}

export const load = async ({ fetch }) => {
  try {
    if (responseData.hasOwnProperty('value')) {
      const { value } = responseData;

      for (const property of value) {
        const mediaUrls = [];
        const media = property.Media;

        for (const mediaItem of media) {
          const { MediaURL, MediaKey } = mediaItem;
          const publicUrl = await downloadMediaAndUploadToStorage(MediaURL, MediaKey);

          if (publicUrl) {
            mediaUrls.push(publicUrl);
            console.log('media url pushed')
          }
        }

        if (mediaUrls.length > 0) {
          await getOrCreateProperty(property, mediaUrls);
        }
      }
    } else {
      console.error('Error fetching data: Invalid response format');
    }
  } catch (error) {
    console.error('Error fetching data:', error);
  }
};