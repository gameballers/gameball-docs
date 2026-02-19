#!/bin/bash
# Download images for Category 04 (Programs) articles
# This script downloads Intercom CDN images and saves them to local paths

BASE="/Users/ahmedelassy/Documents/GitHub/gameball-docs"
cd "$BASE"

# Create all needed directories
mkdir -p images/product-docs/programs/loyalty-points-earn/crossover
mkdir -p images/product-docs/programs/loyalty-points-redeem
mkdir -p images/product-docs/programs/referral-program
mkdir -p images/product-docs/programs/vip-tiers

echo "=== Article 1: launch-and-configure-your-earn-pointing-system ==="

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/activate-earn-pointing-system.png" \
  "https://downloads.intercomcdn.com/i/o/1028445479/a07d834a9520dbe578d3de5b/Pointing+System.png?expires=1770648300&signature=ae7dff1ad93ee86e236f439922e6d92ca09b34a5ce3b4d930cfcefde471809f0&req=dSAlHs16mIVYUPMW1HO4zfPW1xEY%2F%2FmZbVU1vENIk%2F2hWtBa6%2FwJBECyHtmB%0ANzc5%0A"
echo "  1/11: activate-earn-pointing-system.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/configure-earn-rule.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483114083/00443453efd9375483cec43c3be8/Redeem-2B-282-29.gif?expires=1770648300&signature=286b70aeb3efd83b6069fcc8420eb561b2b5c42635a1343ca8afda2c47002dc4&req=dSQvFch%2FmYFXWvMW1HO4zcyAXMUi7fd%2F5hxjdPn4Vwi5qTt9YVgBAnwXFPvw%0AFrah%0A"
echo "  2/11: configure-earn-rule.gif"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/earn-rule-preview.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483115454/af902f0473a752761f77f0fb760d/Screen-2BShot-2B2024-04-22-2Bat-2B11_37_00-2BAM.png?expires=1770648300&signature=476b2eaa94d85b7438ae2feea063b67a753cda9dbd35fafe223aac6f041535ed&req=dSQvFch%2FmIVaXfMW1HO4zel%2F3IxP5RVtnJQXexQGJy40yXDG3Zt%2BRql811oC%0ATE16%0A"
echo "  3/11: earn-rule-preview.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/merchant-rules.png" \
  "https://downloads.intercomcdn.com/i/o/1028630852/b9250be6cfa968e4a97bb6fc/Screen+Shot+2024-04-22+at+2_09_51+PM.png?expires=1770648300&signature=6d3ad7828a2f8bbd64a4a79ef91b7378541d35b69000daf2a1151716b21bec9c&req=dSAlHs99nYlaW%2FMW1HO4zUb430VdxQRMGi9SRomdYhsIqVJ4Izpwp%2FOEDKdz%0ARots%0A"
echo "  4/11: merchant-rules.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/collection-rules.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483118885/90e6391ada924a2d98244c63ff03/Screen%2BShot%2B2024-04-22%2Bat%2B2_09_25%2BPM.png?expires=1770648300&signature=f95915d0594e397d6e31d46c56c31c824065a557cdebefdce6a49661e5a057d4&req=dSQvFch%2FlYlXXPMW1HO4zfQb2hGZY6y8fA4g6bc2AVVny98lj35Rc%2FXExxUm%0Ak0dE%0A"
echo "  5/11: collection-rules.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/shipping-fee-settings.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483103325/1455d4058ba58f5f350273662845/Screenshot%2Bat%2BMar%2B12%2B22-36-45.png?expires=1770648300&signature=be6f25d2cdccf1c3259efa6b424484d51f51c630eecf53671a566657fb158eca&req=dSQvFch%2BnoJdXPMW1HO4zTtY5L92ONxiYmgbQ%2FonO%2FPH24jLjhaK%2BklYRJc5%0AbazN%0A"
echo "  6/11: shipping-fee-settings.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/points-expiry-settings.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483121125/210496378d9ade6d46139904c65b/Return%2Bwindow%2Bduration-Popup%2B-281-29.png?expires=1770648300&signature=cf6083475e9f714d3835fbe0a35d21d09f8d5fdcb5abcaf4f792fc6940fcae63&req=dSQvFch8nIBdXPMW1HO4zXu%2FszfJwTmb12Z6T5%2F2XnHoKk156gW%2B981TTENl%0AN%2FjP%0A"
echo "  7/11: points-expiry-settings.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/eligible-collections.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483121469/6c07809e3d1932dfd22064fdaeb8/Earn%2Bpoints%2Bapplies%2Bon-Popup.png?expires=1770648300&signature=ae9b6f4f7dc671aa5cde8f344e308da762a15b5bfa14bf78886166a7e4efbbd1&req=dSQvFch8nIVZUPMW1HO4zbESG%2Br0p6lMLi8OKeorFu8FZ4i1CANclpW6AMbp%0A3boi%0A"
echo "  8/11: eligible-collections.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/return-window-duration.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483121846/d3b3ba9cb27667a1599a647d8096/Return%2Bwindow%2Bduration-Popup.png?expires=1770648300&signature=ca2a293dee3b09d969626d432c3a6cb59d1305f2aea2806db60496e703440feb&req=dSQvFch8nIlbX%2FMW1HO4zVViptuHT8au8nMFn5uaVgAFxfZO5eV6EeWm7ZyD%0A3%2FlI%0A"
echo "  9/11: return-window-duration.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/total-earned-rewards.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483123850/3917987efb38d60ba9f2d6538042/Screen%2BShot%2B2024-04-22%2Bat%2B1_22_59%2BPM.png?expires=1770648300&signature=f75fbd1e23b6d0af7ec796e41a02be7f70434081d11968acb793e81d630322fe&req=dSQvFch8nolaWfMW1HO4zXy7WqMI5lTQpf%2BBYWMEeWS4KW%2FMG6G00WOtGqiL%0AU4w0%0A"
echo "  10/11: total-earned-rewards.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/total-rewarded-points.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1483124254/3875601fb373499b3a8abf7df848/Screen%2BShot%2B2024-04-22%2Bat%2B1_23_18%2BPM.png?expires=1770648300&signature=b0b55208677dc6e61d30e04e904138ad57b64926ff4ab7697ce7641c034a5511&req=dSQvFch8mYNaXfMW1HO4zTpCOgUqjzYqGH6UQRcEr8MHa1HzqG0YokkdqXWC%0ATJr8%0A"
echo "  11/11: total-rewarded-points.png"

echo ""
echo "=== Article 2: understanding-loyalty-points-calculations-and-rules ==="
echo "  No images in this article."

echo ""
echo "=== Article 3: collection-based-earning-rules ==="

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/collection-cashback-overview.png" \
  "https://downloads.intercomcdn.com/i/o/602583610/ee3b4daeb8f3c6e4d9f10403/1.+Custom+Cashback3.png?expires=1770648300&signature=b93abf8f9262a3d899471ffa93c5cb49befe5b9d9c0ecc6181d75dfc3575e4f1&req=ciAlE8F9m4BfFb4f3HP0gNjGQ3wseP3ywZqLpfSO7QzusQgrbhXGs9E%2B1uHA%0A6bE%3D%0A"
echo "  1/10: collection-cashback-overview.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/navigate-earn-points.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1617531357/a24ad41588e03faf4762da11b32c/Screenshot+at+Jul+13+11-26-15.png?expires=1770648300&signature=86e3acccea57e11b453fd57a91a6c4181128db077adb61a5794fec0752feaead&req=dSYmEcx9nIJaXvMW1HO4zdUjBRoM1YldzEJgWyjanwTsowoGs3FhpYk3u87f%0A8D%2Bs%0A"
echo "  2/10: navigate-earn-points.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/edit-collection-earning-rule.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1617531671/01cfbe7a708f4989ee6b6b8f591b/Screenshot+at+Jul+13+11-26-33.png?expires=1770648300&signature=73ce2528b3969a08356ac478841019a2ba3350fe58d595396368a668eb5b9d56&req=dSYmEcx9nIdYWPMW1HO4zczlboVvh6N%2F3QBYEpU48KEHx6qOIhgk8i1BWj5%2B%0A6gN7%0A"
echo "  3/10: edit-collection-earning-rule.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/cashback-options-popup.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1617532725/fe4442e587c4f821d7d5fc48ef3c/Screenshot+at+Jul+13+11-28-09.png?expires=1770648300&signature=29c1cf63a68a49c90038fef8696dce3d7a4edd3ed9073e5139e6d2087b3cacaa&req=dSYmEcx9n4ZdXPMW1HO4zal%2B9H2gPz%2B9Kg%2BmQv34%2FpekXWhLX%2FQokEvTpLg5%0ARPOm%0A"
echo "  4/10: cashback-options-popup.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/save-cashback-selection.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497297220/6595d989fa68159a0569fd0601e3/Untitled+design+%2836%29.gif?expires=1770648300&signature=ed0382fe7fd96f0b55f312b7c630fcfd282bd44f930f4d6402bef03fea523161&req=dSQuEct3moNdWfMW1HO4zSP1fSxXEvpZZ6DxDpUKE%2B1U4zqBnVorzI9JOTIY%0AKqYv%0A"
echo "  5/10: save-cashback-selection.gif"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/collection-rules-tab.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1617538128/0cc1520ce5f3621339b85221518f/Screenshot+at+Jul+13+11-37-43.png?expires=1770648300&signature=c627d755baa266206d12422d142e657bc519d6a40f8a570f3ba57c0b986d3f35&req=dSYmEcx9lYBdUfMW1HO4zUxppNV82opCXE%2BWkWWsrFx466g5bvF3JNWq7L68%0AuF1K%0A"
echo "  6/10: collection-rules-tab.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/add-collection-rule.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1617538557/f31fd8417e675756102dc2581004/Screenshot+at+Jul+13+11-38-52.png?expires=1770648300&signature=2a03db5cc5b9157ad7c99938495bdf46dd4adc012632a60735df899f207e974f&req=dSYmEcx9lYRaXvMW1HO4zQ3%2FY47Ncl4tbvkubFIMYgoWMwwmhzaKI21Ww4wG%0AYLSc%0A"
echo "  7/10: add-collection-rule.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/configure-cashback-rule.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497359036/22c14206ab99786a123179489d1a/Untitled+design+%2837%29.gif?expires=1770648300&signature=d8ca098f2eb26d56ea2cc2fb2d2e4c6be4404d6b8a6cbc668de29314edd3c9a1&req=dSQuEcp7lIFcX%2FMW1HO4zbgNTQfuQs4th0TJnWVfKmENKdwlmurPYL%2B46faT%0AZiUH%0A"
echo "  8/10: configure-cashback-rule.gif"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/enter-cashback-value.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1617541944/23d8cf9aad86ab8cbb4207395f23/Screenshot+at+Jul+13+11-46-25.png?expires=1770648300&signature=9d83bfe4a869ab556973c8985eef6b780954f49386a51c00027606a0aa4990a9&req=dSYmEcx6nIhbXfMW1HO4zYZbnXtTVlpYxLDbDLyYI7CPR00EZtNl4TB9NZtv%0AzHpj%0A"
echo "  9/10: enter-cashback-value.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/add-tier-rule.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497366678/6cf5d240d8b821177fe814837cad/Screenshot+2025-04-28+at+12_12_40%E2%80%AFPM.png?expires=1770648300&signature=166d5743e84174d5b56c62bd9277e051a5b5d0e1f1b4803574a987863e7d1d29&req=dSQuEcp4m4dYUfMW1HO4zdh5PSdJXXBoqN5Gdh0w3tlYZvgfSL%2BgTdkhvrSQ%0AB3%2FT%0A"
echo "  10/10: add-tier-rule.png"

echo ""
echo "=== Article 4: gameball-merchants-crossover-rewards-experience ==="

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/merchants-redemption-flow.png" \
  "https://downloads.intercomcdn.com/i/o/345540475/4fc908f0d6eb62fcddccc6fb/Web+1366+%E2%80%93+8.png?expires=1770648300&signature=00b76e41078230a9baad0026be17d1680e4ce1c5d7ae8ebc89b240bf47eb711c&req=dyQiE81%2BmYZaFb4f3HP0gCf47PdbHbOCxlow%2BM5swunoldnxDDwPYBW5FPbh%0AiiM%3D%0A"
echo "  1/3: merchants-redemption-flow.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/same-cashback-stores.png" \
  "https://downloads.intercomcdn.com/i/o/339063941/2901c66dfd38e5ffaa853264/Group+10387.png?expires=1770648300&signature=8e1666a41d1814cd9e276f40b3a6ef78b22b520e5ca5d4890a454d855ddf7f4c&req=dyMuFs99lIVeFb4f3HP0gGYFe8QvCEoVrMu7Kan%2FGh2jn57J5BhXSyiwO%2F5C%0Aon0%3D%0A"
echo "  2/3: same-cashback-stores.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/different-cashback-brands.png" \
  "https://downloads.intercomcdn.com/i/o/339063772/087a09951381cda1bb6a2116/Group+10388.png?expires=1770648300&signature=af19fe60ca47b07a5daba492072d2f7301208e77fcb59010bf98bc08695dd71b&req=dyMuFs99moZdFb4f3HP0gNzODOELzHjlRKZ7yAmWCNTQp0D5F55izPj47dFH%0A2sA%3D%0A"
echo "  3/3: different-cashback-brands.png"

echo ""
echo "=== Article 5: creating-a-new-merchant ==="

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/create-new-merchant.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497587191/8b4710b90bb94767543e9ff5b36b/Untitled+design+%2838%29.gif?expires=1770648300&signature=162dbc7402b22be3dd09dcbbb42fef64b72b461449a36ca70fc8266400f05e49&req=dSQuEcx2moBWWPMW1HO4zRkUIOt3s2kXwWS%2Bs3fIDer8BAQ3nQxj52nTIRY%2F%0Agjd4%0A"
echo "  1/1: create-new-merchant.gif"

echo ""
echo "=== Article 6: reward-customers-with-different-cashback-per-brand ==="

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/merchants-tab.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497762354/cda2bbdd7494153b0fe292530bf0/Screenshot+2025-04-28+at+4_37_49%E2%80%AFPM.png?expires=1770648300&signature=1adbe7924cf5c0ac97c89cb1c12c2bc2cec33a8d68d11aa78049bb8e9a9ba44c&req=dSQuEc54n4JaXfMW1HO4zUPMqrVdVFAL0T5OQlGC3l3rAsp1D%2FpKpZwXYsGH%0AlX0H%0A"
echo "  1/3: merchants-tab.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/merchants-list.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497768494/270a1d1f89b87372d442978dc7b9/Screenshot+2025-04-28+at+4_40_40%E2%80%AFPM.png?expires=1770648300&signature=34d3cc36fd448b52f0632b34373539d1920331c3c6b160238ed05235d3c1f8a7&req=dSQuEc54lYVWXfMW1HO4zekhOz%2Byh%2BH%2FgUpHnRGcDUQqPfVKOwObBiiFZ2T8%0Atsj6%0A"
echo "  2/3: merchants-list.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-earn/crossover/save-merchant-cashback-rule.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1497774579/7d5d1d9693ea3d9d77c0817b594b/Screenshot+2025-04-28+at+4_40_59%E2%80%AFPM.png?expires=1770648300&signature=4af1f058db2dcee0fcee8e74db4da68f8e911b2169ddfa54c99426dc1e117591&req=dSQuEc55mYRYUPMW1HO4zbWnZd4fD9BDhHv7QpuhJTa5R3L6BxNE2CMreCHt%0AM4rs%0A"
echo "  3/3: save-merchant-cashback-rule.png"

echo ""
echo "=== Article 7: launch-and-configure-your-redeem-pointing-system ==="

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/redeem-points-navigation.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1486925901/7bf0f9e3e352c112a67e4968c2a1/Screenshot+2025-04-22+at+12_58_30%E2%80%AFAM.png?expires=1770648300&signature=a41c206c02b38d9cea457c4b19a97d7dc1b90bc0eebdb44a526409f21f5d09a4&req=dSQvEMB8mIhfWPMW1HO4zbhR6%2FOpJXEt0MtaGnHN8kOQ7uXy7EZd8I%2FU2DP4%0A4Gsc%0A"
echo "  1/8: redeem-points-navigation.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/point-to-cash-config.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1486937579/5c7eb4e0410544173470bcb86583/Untitled+design+%2834%29.gif?expires=1770648300&signature=00a37c70aed7d67570c81d2efdf4976e0d0b0e2c1147b224b5908ee75d2fc4a1&req=dSQvEMB9moRYUPMW1HO4zSwB3wKnehYmpI8EJsTFEkc93mGuusvQ7OFkM42C%0AiFDm%0A"
echo "  2/8: point-to-cash-config.gif"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/point-to-cash-active.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1486937008/08c1dc06fc03eae0d3a193ce5acf/Screenshot+2025-04-22+at+1_08_03%E2%80%AFAM.png?expires=1770648300&signature=e5f6861b0d31846fb1615895d80b9fc62f1b7fcb6dcf56c0a2767b6bcc51a5d7&req=dSQvEMB9moFfUfMW1HO4zVcFfX5y%2BehBX3ZdgMMzzR%2BYLcHLzJG1yM65M94G%0AXw77%0A"
echo "  3/8: point-to-cash-active.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/add-redemption-option.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1486953021/094dae384d1276f13701f473a87c/Untitled+design+%2835%29.gif?expires=1770648300&signature=b85eda349d01d40af16bc677a6fafa181a6657ed859456597a0920dd13589cea&req=dSQvEMB7noFdWPMW1HO4zcyRD0fEIfZtzO9XD3hx6lNP0tqyZ%2BaMgFkF1tuj%0AjgMk%0A"
echo "  4/8: add-redemption-option.gif"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/points-holding-config.png" \
  "https://downloads.intercomcdn.com/i/o/1029321063/d59ebed862c224798c8d5510/Return+window+duration-Popup+%284%29.png?expires=1770648300&signature=c4410c81c1d184903fd998ad47c99193e8e2cef3d2a572028c51364652cad913&req=dSAlH8p8nIFZWvMW1HO4zfwzJLtiyVLmDRKJKbvrSmnrKFE6X2F8kviflg25%0AQjph%0A"
echo "  5/8: points-holding-config.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/total-redemptions.png" \
  "https://downloads.intercomcdn.com/i/o/1029324160/b9b45821c7843a3fa13eaa05/Screen+Shot+2024-04-23+at+1_06_11+AM.png?expires=1770648300&signature=f133d6a1586d8663c9dce425506e3609e20a0c02843f8bec11a4a85c8de40041&req=dSAlH8p8mYBZWfMW1HO4zT2uq1GHjLgBWva%2BoAPVcV%2BEuzRSCfZGOIE1bk7N%0AYd4a%0A"
echo "  6/8: total-redemptions.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/total-redeemed-points.png" \
  "https://downloads.intercomcdn.com/i/o/1029324300/de8bdb54d8398642a91ae003/Screen+Shot+2024-04-23+at+1_06_26+AM.png?expires=1770648300&signature=10819380aedd9583012cccb8b0a12651dbbe010a8e0bb1a2a122aa16e2abb323&req=dSAlH8p8mYJfWfMW1HO4zZJJ3PVsPgR9WN2z5oxlV2sgyfmR%2FvmiODdiiqt4%0AqVbI%0A"
echo "  7/8: total-redeemed-points.png"

curl -L -s -o "images/product-docs/programs/loyalty-points-redeem/redeem-insights-tab.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1828458237/82475ed58f4af258f3e0b3e12230/Screenshot+at+Nov+13+14-00-15.png?expires=1770648300&signature=32f8f576e5370b2fa7c3c7d3e3a434ae1b8f69fff67cf9f7f632b75e570c5591&req=dSglHs17lYNcXvMW1HO4zTCaRZAW7ll2eAdYQYgWwiluboFMhXTI3AV4ZNvk%0A3FaB%0A"
echo "  8/8: redeem-insights-tab.png"

echo ""
echo "=== Article 8: launching-referral-program ==="

curl -L -s -o "images/product-docs/programs/referral-program/activate-referral.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1481408499/21e5826d301a9eb4c0e6bd7c492e/Screenshot+2025-04-17+at+6_21_27%E2%80%AFPM.png?expires=1770648300&signature=2318319ed4a9edeec4c8758a0e7317886e06f9edd715adba7c54e1721d3561d9&req=dSQvF81%2BlYVWUPMW1HO4zT7M15tDghfuFU4fmWbn417uobU5O5YvkjvU3ib8%0Ap1xU%0A"
echo "  1/14: activate-referral.png"

curl -L -s -o "images/product-docs/programs/referral-program/referral-reward-options.png" \
  "https://downloads.intercomcdn.com/i/o/1029681319/c971c5f53cfc0eb26fe9f0c4/Screen+Shot+2024-04-23+at+11_46_31+AM.png?expires=1770648300&signature=10fe3ac9aecd0bbaaf25a848475e538f43a907d207f7aeff629dad97dc405724&req=dSAlH892nIJeUPMW1HO4zeOtMWE3%2BDkkJVkre5FC0paGuV6PQcACrKp9aNZJ%0AvPOk%0A"
echo "  2/14: referral-reward-options.png"

curl -L -s -o "images/product-docs/programs/referral-program/friends-action-config.png" \
  "https://downloads.intercomcdn.com/i/o/1029683224/1384d6663b4be2129d0956b7/Screen+Shot+2024-04-23+at+11_47_46+AM.png?expires=1770648300&signature=de226bed30d733386f6f1579bb9612878a41fe26a8966fafc4b8c0d163dfd0b3&req=dSAlH892noNdXfMW1HO4zQUvYu2it1%2Bp4M5daT4IStG49DH9ccsJ7%2BQu64BU%0AuWXm%0A"
echo "  3/14: friends-action-config.png"

curl -L -s -o "images/product-docs/programs/referral-program/customer-reward-setup.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1481418293/a98489f54528da7509d42dc15383/Screenshot+2025-04-17+at+6_27_59%E2%80%AFPM.png?expires=1770648300&signature=7b17af11ce68b7a4b8bea4e41c495d9e98829826f004f1182d71253e75d60e7f&req=dSQvF81%2FlYNWWvMW1HO4zR%2FeQ9ekvPNYI2%2BXFOPvK1ICglTASLkVYvPIss45%0AFzlh%0A"
echo "  4/14: customer-reward-setup.png"

curl -L -s -o "images/product-docs/programs/referral-program/friend-reward-setup.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1481418996/4dfaec8227496bbb1ea6502ae793/Screenshot+2025-04-17+at+6_28_05%E2%80%AFPM.png?expires=1770648300&signature=f55672f8ffbb05ad322741fc23937d8ee2e20fea17a0378212e8914f1eb7e911&req=dSQvF81%2FlYhWX%2FMW1HO4zUiS72mdcO6AVMxtIIyhpwL20fEMzMPSvRUgaXpQ%0AatA4%0A"
echo "  5/14: friend-reward-setup.png"

curl -L -s -o "images/product-docs/programs/referral-program/referral-landing-page.png" \
  "https://downloads.intercomcdn.com/i/o/1029703677/63db3a458d91c9bbf9fee23d/Screen+Shot+2024-04-23+at+12_05_37+PM.png?expires=1770648300&signature=69dacc98bf3f36331378d84f0fe7742436f64d9fa1310c7622d9e9c9b2b5cc36&req=dSAlH85%2BnodYXvMW1HO4zSEkM9aSJa5z0jxjBga0E%2FSspdCb%2F1FIO2PTfmlZ%0A6L9K%0A"
echo "  6/14: referral-landing-page.png"

curl -L -s -o "images/product-docs/programs/referral-program/referral-content-link.png" \
  "https://downloads.intercomcdn.com/i/o/1029707958/de2bdbd7b34b815bccc9059d/Screen+Shot+2024-04-23+at+12_13_13+PM.png?expires=1770648300&signature=5b07de12f59c236f470fbf7c0a47a0e933429c7d01b74c802d1e56387aa3ab9a&req=dSAlH85%2BmohaUfMW1HO4zeoDeS%2B%2FecEd1JqpZA2ZsHeLvllmih%2BP%2BmBgCmuE%0AZ1qB%0A"
echo "  7/14: referral-content-link.png"

curl -L -s -o "images/product-docs/programs/referral-program/referral-content-tab.png" \
  "https://downloads.intercomcdn.com/i/o/1029710777/388a102ad1f44f21204c9d78/Screen+Shot+2024-04-23+at+12_15_52+PM.png?expires=1770648300&signature=84f855b2b2064757b5ff2aad096fe24074533b281da00c7b645911a242902704&req=dSAlH85%2FnYZYXvMW1HO4zZIOc8uj2bJ28ZF%2Fqhgqh4zmSyademEuWtPBv1gx%0AY58s%0A"
echo "  8/14: referral-content-tab.png"

curl -L -s -o "images/product-docs/programs/referral-program/multi-step-referrals.png" \
  "https://downloads.intercomcdn.com/i/o/1035235143/acc754b1db6d1c1f1d4911b4/referrals.png?expires=1770648300&signature=d38ad7cf282404bf6b9eebc082b8f61ab83b5f9566975a0edbeed041a9a2b360&req=dSAkE8t9mIBbWvMW1HO4zTPCgXfwFELQKoAX65A3K%2BlYnha8SVvlKVyV6Enq%0AZR8M%0A"
echo "  9/14: multi-step-referrals.png"

curl -L -s -o "images/product-docs/programs/referral-program/multi-step-config.png" \
  "https://downloads.intercomcdn.com/i/o/1029759941/3eb34e75421b44a0b350acef/Desktop+-+24.png?expires=1770648300&signature=9b6b03950d75a984381417d542112dae5d7bc43944ed75c7747b142897332dad&req=dSAlH857lIhbWPMW1HO4zcAF6bhZL4vfix0zzm2W%2FYB9I4LdDP6aJ3bozO%2Fg%0Amkzt%0A"
echo "  10/14: multi-step-config.png"

curl -L -s -o "images/product-docs/programs/referral-program/referral-code-display.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/2022660527/0db1fcd3d6cfca89acc8fc1daadd/image.png?expires=1770648300&signature=db8b88a86e6fc10f66eb911ada5de213fabf51ea004419d57646cc80f15022a3&req=diAlFM94nYRdXvMW1HO4zTpJaNEDiQqoMS3xZs2qNXjP42wkiV4EbEbl3iaJ%0AZTC%2F%0A"
echo "  11/14: referral-code-display.png"

echo ""
echo "=== Article 9: referrals-on-gameball-widget ==="

curl -L -s -o "images/product-docs/programs/referral-program/widget-referral-section.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1487576413/3711445cc960383fe9bf2845a817/Screenshot+2025-04-22+at+11_08_20%E2%80%AFAM.png?expires=1770648300&signature=b0cea0544c35d57a542debdbb98796d19c171b450e6f6cace05ca51709f783f8&req=dSQvEcx5m4VeWvMW1HO4zYzVNWHGrnlt%2BVNXQIocGb0Ev9PRsbB8zkVCd500%0AIlIw%0A"
echo "  1/8: widget-referral-section.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-referral-link.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1487576909/ec7e67a5cfbb829c937b22bb2df5/Screenshot+2025-04-22+at+11_08_44%E2%80%AFAM.png?expires=1770648300&signature=95b0355119c68caebaf01fde2ed9a2c73e86faa2f73798766e000434c30bf8ec&req=dSQvEcx5m4hfUPMW1HO4zU4Z7xFQDCvtUctwE1cEz6Ng9e3DCIo6Kj4b9%2B1m%0A3loB%0A"
echo "  2/8: widget-referral-link.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-referral-rewards.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1487692080/2f192315b7e44f557a9742d29515/Screenshot+2025-04-22+at+11_09_09%E2%80%AFAM.png?expires=1770648300&signature=37701232632d4ab06205d9b0b9910ebd1dc497a8f677267ff1ab150c71687611&req=dSQvEc93n4FXWfMW1HO4zfhQLVfmvol1HF4Gt8kA477dMAHzU8uMEWn8gYEc%0AS2Ga%0A"
echo "  3/8: widget-referral-rewards.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-referral-progress.png" \
  "https://downloads.intercomcdn.com/i/o/850739597/3617486d57cf19b62e747e83/Screenshot+at+Oct+11+12-14-52.png?expires=1770648300&signature=ad2dc76ab075464cdb14199c7a4fc1b0b5ce25d5c00ebcb383f7499075cc0625&req=fCUnEcp3mIhYFb4f3HP0gJbDFLn4jKnuHekOWvGQsUbcrITSd3oYIURM4J%2Bj%0A%2FAQ%3D%0A"
echo "  4/8: widget-referral-progress.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-referral-history-completed.png" \
  "https://downloads.intercomcdn.com/i/o/850735046/a2948a497f1b0bf66fd6f725/Screenshot+at+Oct+11+11-34-26.png?expires=1770648300&signature=f3fbb1a64d7c54b477d524ad30d19233e49f51a0effda393f06b104c78c462f3&req=fCUnEcp7nYVZFb4f3HP0gMIZc6flvJul0lg1lEfy0yHcDA7D7iRiyY7B1qij%0Axs8%3D%0A"
echo "  5/8: widget-referral-history-completed.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-referral-history-pending.png" \
  "https://downloads.intercomcdn.com/i/o/850736138/bde0cf19577ceeb3313f8bda/Screenshot+at+Oct+11+11-37-38.png?expires=1770648300&signature=ed23c42fe71658034b72a6bc1ab548cb7431b82cbf1ee8eb3cd622dc7c66bf58&req=fCUnEcp4nIJXFb4f3HP0gCDoeSjIOSiJ3fBk1kmqTpQrUZv%2FosJe8KVgtftn%0AQFg%3D%0A"
echo "  6/8: widget-referral-history-pending.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-how-it-works-1.png" \
  "https://downloads.intercomcdn.com/i/o/850743729/70778f521091be9d3aad1799/Screenshot+at+Oct+11+11-38-06.png?expires=1770648300&signature=e482e6c392b13a37f5aa8a939b39aa4e3d9fffe85771442d74de83b16874d820&req=fCUnEc19moNWFb4f3HP0gNJqnQ8poMkk6Q3tKGu8uvaXu1Lpds0MHfHReecv%0AYko%3D%0A"
echo "  7/8: widget-how-it-works-1.png"

curl -L -s -o "images/product-docs/programs/referral-program/widget-how-it-works-2.png" \
  "https://downloads.intercomcdn.com/i/o/850746139/12e519e2eee9c1ce2ac76d0c/Screenshot+at+Oct+11+11-38-25.png?expires=1770648300&signature=ee6288201a25472755aecefd745057db530e8362546a1f59d587344b8de18303&req=fCUnEc14nIJWFb4f3HP0gGnNeblpEIkVc3PkI2TAtXQRY7UUKuBXXCl4PCwR%0A79U%3D%0A"
echo "  8/8: widget-how-it-works-2.png"

echo ""
echo "=== Article 10: configuring-gameball-vip-tiers ==="

curl -L -s -o "images/product-docs/programs/vip-tiers/vip-tiers-overview.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477592795/2e468f127905e72e03cedeba6c55/Screen+Shot+2025-04-15+at+7_04_13+PM.png?expires=1770648300&signature=caec1144ca4c24ba73342ea1da93fc7c48619bcc9f69888b79cb703b78c717bf&req=dSQgEcx3n4ZWXPMW1HO4zTt4Thqo9bDWg%2BabgXxtsZhDbZDRMVeY6S1vPyNq%0AceEg%0A"
echo "  1/6: vip-tiers-overview.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-display-settings.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477598393/ec66678c3f7473c98352154857e6/Screen+Shot+2025-04-15+at+7_07_34+PM.png?expires=1770648300&signature=4f56e79367193d56d6222cdb051754e2a13deba51216e84e1e98d0a16b246518&req=dSQgEcx3lYJWWvMW1HO4zSwh9B3mwqhcN3qKAGEehBFEmZtReI2vB21AiOEG%0A%2BF7z%0A"
echo "  2/6: tier-display-settings.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-milestone-settings.png" \
  "https://downloads.intercomcdn.com/i/o/1029839915/ddb1e86f4a6e225c4aaa3fb7/Screen+Shot+2024-04-23+at+2_18_20+PM.png?expires=1770648300&signature=e492cb5abfe05ea119061fa7fee5a3299e7bb37e03154f3f9783a4d2f6fcb618&req=dSAlH8F9lIheXPMW1HO4zWLlyupJETgDYvA2%2BF%2Fsz%2FGa9RL60vQJ7vvrol4c%0A59DE%0A"
echo "  3/6: tier-milestone-settings.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-benefits-settings.png" \
  "https://downloads.intercomcdn.com/i/o/1029843056/94f4a05a14dfc2375e6669d4/Screen+Shot+2024-04-23+at+2_18_36+PM.png?expires=1770648300&signature=f034e5c2aa4e8d47ffd292d4b85f04220c31ae4b8cd0a41cf2f8798918ee6678&req=dSAlH8F6noFaX%2FMW1HO4zRqLIpBeT5f1giREAaeHRO9vnDo4h%2FHb5Hqz04XH%0Altlv%0A"
echo "  4/6: tier-benefits-settings.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tiering-up-method.png" \
  "https://downloads.intercomcdn.com/i/o/1030495108/a5483ba56eaa1b9170fd7075/Popup+frame+%283%29.png?expires=1770648300&signature=6cb135ec4ee20b04bb60f492a73b895f0e6fa7005cfbb88460e8fbce67bedbc6&req=dSAkFs13mIBfUfMW1HO4ze1USIKKeNmN3RJ3j1GsnZ9yjb1xrCZ9jB3GO0EV%0Ag6ZA%0A"
echo "  5/6: tiering-up-method.png"

# Note: The gameball.intercom-attachments image (widget-manual-tier) is handled in Article 11
# The 6th image from source (refunded orders) doesn't have a gameball.intercom... domain:
curl -L -s -o "images/product-docs/programs/vip-tiers/refunded-orders-setting.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1814317252/5956c8ae2c23cc6dfa404fe67a6a/image.png?expires=1770648300&signature=19ad261c96d42e8e538f8b1f8142c1883815dce9eaf94bd514abffb230fdb523&req=dSgmEsp%2FmoNaW%2FMW1HO4zVuP231H2VjF4Hxs5fucZGE9eGMob5sotRDSewtv%0Af%2F8j%0A"
echo "  6/6: refunded-orders-setting.png (Note: VIP tiers MDX doesn't reference this image directly but it's from the source)"

echo ""
echo "=== Article 11: manually-updating-customers-tiers ==="

curl -L -s -o "images/product-docs/programs/vip-tiers/adjust-tier-single.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477761248/73ee0bef6819b08285b5388a5d32/Screen+Shot+2025-04-15+at+8_34_27+PM.png?expires=1770648300&signature=bd11c34ed74fd1524d9bbda5d3cea0fd5b79009cc0a4c39152f8a2e1f1efb376&req=dSQgEc54nINbUfMW1HO4zdhrTtu5f5PE2w%2FI1krU8GFrq9RdVXUtRK2JjQaE%0ASRSl%0A"
echo "  1/5: adjust-tier-single.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/adjust-tier-multiple.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477768103/094619c56a77aabaa52b29ccb0db/Screen+Shot+2025-04-15+at+8_38_01+PM.png?expires=1770648300&signature=c8645174eab04787871cff7d9315bec8631605c48dfbe152758dde490f9ef5c2&req=dSQgEc54lYBfWvMW1HO4zWHfi5fjtvQGNMyPndrx5OwiS7Q%2FjS8nP0Y5qMEQ%0AzFnQ%0A"
echo "  2/5: adjust-tier-multiple.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-adjustment-options.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477774750/9d6385dd9bd07d048bddcf62cd7e/Screen+Shot+2025-04-15+at+8_41_30+PM.png?expires=1770648300&signature=5829b9ee34c6c1b84431eed77580d118fa49746ac9108cdec59239beef0b214b&req=dSQgEc55mYZaWfMW1HO4zVe2vKVUIpz6KV%2F%2FwP49gh%2BJ6BIMBwnW0%2FMYOIqJ%0Awxob%0A"
echo "  3/5: tier-adjustment-options.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/widget-manual-tier.png" \
  "https://gameball.intercom-attachments-1.com/i/o/383090197/ca81f9540d4bae6212a285bd/79e31a5d-1a78-48a7-9df9-e8ebe7f7e1a1.png?expires=1770648300&signature=5e351ebb85731bd3bfca8e7aa8e3ab573654353f177c83248800397b7f4b4bdc&req=dygkFsB%2BnIhYFb4f3HP0gPwWfQbcrXAMbfKoZ0kAwnxEOm00qQf%2FIGHuV5gC%0AnVE%3D%0A"
echo "  4/5: widget-manual-tier.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/reset-manual-tier.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477788470/e711b0d2938ef18ce076b687e519/Screen+Shot+2025-04-15+at+8_48_31+PM.png?expires=1770648300&signature=0bc2d272a3c2676d4dfaf4d9c4ecec72b685d7278f10a10e881bc573fb8e1a05&req=dSQgEc52lYVYWfMW1HO4zYlGsiduGVpqQ%2BXIE2HGvv7ZwTyu%2Fi%2BxquadDUPf%0AagCL%0A"
echo "  5/5: reset-manual-tier.png"

echo ""
echo "=== Article 12: tiers-on-gameball-widget ==="

curl -L -s -o "images/product-docs/programs/vip-tiers/tiers-widget-overview.gif" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477738935/8db6084d7f5eb54ff5ac41033db9/Untitled+design+%286%29.gif?expires=1770648300&signature=0c460490facb088ea1d529e9cad4e4df03c1a521767008d105cad0b97e89748c&req=dSQgEc59lYhcXPMW1HO4zdQExRMd2phHc8ANjreu%2B0uyI2kGW97Erla2jN2e%0AwO8t%0A"
echo "  1/1: tiers-widget-overview.gif"

echo ""
echo "=== Article 13: tiering-up-methods ==="

curl -L -s -o "images/product-docs/programs/vip-tiers/tiering-up-methods-overview.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477638030/a9ef46fb1c8fd826a45ed01ade86/Screen+Shot+2025-04-15+at+7_31_04+PM.png?expires=1770648300&signature=8d89d03586c30be5a540427c5d6f5c54135a3241f9b4cd14c01ca82ce2da5f2c&req=dSQgEc99lYFcWfMW1HO4zUCnVhhyJsMjorV2yUboCtzMxJUF1XHW0neS6IL8%0A6fo8%0A"
echo "  1/3: tiering-up-methods-overview.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-progression.png" \
  "https://downloads.intercomcdn.com/i/o/1030785277/b6c9c92fb11f4e06fa241d23/Screen+Shot+2024-04-24+at+10_38_09+AM.png?expires=1770648300&signature=304e87a1d187bba616dc3a1352281badae2e9735f6ad92d9de8d654a863d562f&req=dSAkFs52mINYXvMW1HO4zWV6ecAmUBDnGpNt0qpRlhQmkWWAd203dRI2%2Bn4S%0Aotbi%0A"
echo "  2/3: tier-progression.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-advantages.png" \
  "https://downloads.intercomcdn.com/i/o/1030792161/dc5a33003a8c8d8a3011e360/Screen+Shot+2024-04-23+at+2_18_36+PM.png?expires=1770648300&signature=307e17e71350529ecbf98f60937dfbb26a06069800c94b6e8ab14adcfe5e96fb&req=dSAkFs53n4BZWPMW1HO4zfb7qP%2B7gNfLYkK44x7Tjd0PjhLO3QjaVXz19F46%0Ag5Vp%0A"
echo "  3/3: tier-advantages.png"

echo ""
echo "=== Article 14: understanding-tier-expiry ==="

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-expiry-options.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1477697551/7ab390dbc894880c708652362190/Screen+Shot+2025-04-15+at+8_01_35+PM.png?expires=1770648300&signature=1d1d4eea85e81b1556b759c29bb9c7bf9b4ab85a545abbbcfebb28d74d851379&req=dSQgEc93moRaWPMW1HO4zaa%2BF3ulG4LKqRFnRi4Ta%2FoGhVR6klXlWrVsLIWV%0AVvtI%0A"
echo "  1/4: tier-expiry-options.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/configure-tier-expiry.gif" \
  "https://downloads.intercomcdn.com/i/o/1030903476/adcdee5c8e594375395dcf68/Screen-Recording-2024-04-24-at-12_41_26-PM.gif?expires=1770648300&signature=8622a5cbf3ff8e8d2875c7f85ffa675e660bb3b7aebcfd5654ada9345b79fc77&req=dSAkFsB%2BnoVYX%2FMW1HO4zdtGrGgyCFBjrYiCfmEcEVi5SvHHE97nrOKYBU37%0AkunP%0A"
echo "  2/4: configure-tier-expiry.gif"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-evaluation-dashboard.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1812614958/c19184dd8ec8190bed8ee354f302/image+%2832%29.png?expires=1770648300&signature=a197b8be4f206d9cce19a1dfe2d9de261cf228f87abd7e26d2a74b58307dd5b8&req=dSgmFM9%2FmYhaUfMW1HO4zaIJLiRzbBsniBiaE8aQrNHagIfgFCi2Gd7Kb38I%0Aw%2BN%2F%0A"
echo "  3/4: tier-evaluation-dashboard.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-evaluation-widget.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1812616987/3a55a3c073679867cd8a6d269877/image+%2833%29.png?expires=1770648300&signature=fa34974f6897089fdc0608e51cbf9ad2350d5fe7dfaf71c20a8f9a6927d92428&req=dSgmFM9%2Fm4hXXvMW1HO4zR8ya83Ipx7k8MSe9LE10c%2Fwn8qS7M4RCjLwGGjF%0AJ%2BHC%0A"
echo "  4/4: tier-evaluation-widget.png"

echo ""
echo "=== Article 15: customizing-benefits-for-different-tiers ==="

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-benefits-overview.png" \
  "https://downloads.intercomcdn.com/i/o/1030514563/2934d3f52c65fde55ee59de2/Screen+Shot+2024-04-23+at+2_18_36+PM.png?expires=1770648300&signature=1f62c933aa7f83528a6d1535c5aa10132aaeb0a2f7ea71fc745e084c96528488&req=dSAkFsx%2FmYRZWvMW1HO4zXEUA8%2FtAGMiMbpPebwZNuACkfGvtPDYRjZxrcHx%0AvMSc%0A"
echo "  1/11: tier-benefits-overview.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/entry-rewards.png" \
  "https://downloads.intercomcdn.com/i/o/1030517060/92af0f3edf0e3d82935cba3b/Screen+Shot+2024-04-24+at+1_49_39+AM.png?expires=1770648300&signature=016026b1b5622a291351fd0fddbcf0edd026a8d8fd870deef163db7fdb202116&req=dSAkFsx%2FmoFZWfMW1HO4zQVhIrdVyonCxMWBdsiGTXOLdoaos090HX4ouOYC%0AvHdf%0A"
echo "  2/11: entry-rewards.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/entry-reward-types.png" \
  "https://downloads.intercomcdn.com/i/o/1030519006/0353801d80c00e99f067ad32/Frame+12389.png?expires=1770648300&signature=8147ee7238975ffe92c2c8129643adc867a73d9d58588c2c83ead3328f8d94f6&req=dSAkFsx%2FlIFfX%2FMW1HO4zXBE0%2B3iOqARMD%2FlgdZgSz1BArM9iMvfrIJGlib%2B%0AWvWX%0A"
echo "  3/11: entry-reward-types.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/loyalty-points-custom-config.png" \
  "https://downloads.intercomcdn.com/i/o/1030525793/538fe4ce8b06eafb46fdcc16/Screen+Shot+2024-04-24+at+1_49_53+AM.png?expires=1770648300&signature=038f7039ad682debf88c20367c7ea465322dedcf4fe93760eefa1f84aa6e8311&req=dSAkFsx8mIZWWvMW1HO4zfh1dd8ZhhhaGjYJ1ylK3Cl7aF5ubDbV%2BtP0vDSo%0AO%2FYN%0A"
echo "  4/11: loyalty-points-custom-config.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/loyalty-points-config.png" \
  "https://downloads.intercomcdn.com/i/o/1030529993/e7e8db54f1c721409bc2b0d7/template.png?expires=1770648300&signature=90163b8b0e2d3e1d20f01c5fc8e80786f47224b3d1849e1041600a667b8dc213&req=dSAkFsx8lIhWWvMW1HO4zQIsCPNt5oOUYQfOwzYoFVynfvEIniXe0Y48tTWF%0Af09R%0A"
echo "  5/11: loyalty-points-config.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/lifetime-reward.png" \
  "https://downloads.intercomcdn.com/i/o/1030520205/2c017dd32840f01e14540d15/Screen+Shot+2024-04-24+at+1_50_03+AM.png?expires=1770648300&signature=0b8a4287c965ac80138b80074e1844ff483d41d08e4aaf1519455f9ac2653446&req=dSAkFsx8nYNfXPMW1HO4zWTt8w%2FQ7fB5WCEmopdJE6a8q%2BQEAeKyiu5aMz51%0AyzZM%0A"
echo "  6/11: lifetime-reward.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/custom-benefits.png" \
  "https://downloads.intercomcdn.com/i/o/1030530682/c74943d583fb393d1759ff5c/Screen+Shot+2024-04-24+at+1_50_17+AM.png?expires=1770648300&signature=718d965b6a51bf330a198eed98a52f793465106f7543673c94ad667349771253&req=dSAkFsx9nYdXW%2FMW1HO4zRCZhK8HBHkyWsW5KFTmi%2Bl2XlKpSPYqSsdJK8Qh%0A3cMq%0A"
echo "  7/11: custom-benefits.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/custom-benefits-config.png" \
  "https://downloads.intercomcdn.com/i/o/1030532030/478d5387d4ab4c30a18863b7/Frame+12350.png?expires=1770648300&signature=0b01d09760b21142526f4db73c5dc712b4fde5dac36957ddec3d5ab8648872ea&req=dSAkFsx9n4FcWfMW1HO4zZShMObkq1bTWfGIaRI7Jgv1AL2eQTHNuO7tuDW7%0AUHZe%0A"
echo "  8/11: custom-benefits-config.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/return-window-duration.png" \
  "https://downloads.intercomcdn.com/i/o/n6jn4hso/1873589648/9e0a3302c9f19612f9ca49d48010/image.png?expires=1770648300&signature=0893a2ab068684c66b51901595ac7b23d208d53afcdc15c7057af535a5fc6e97&req=dSggFcx2lIdbUfMW1HO4zWO6aVOzjrVU%2FNPye%2Bx4v0xEBdx%2BWsGXb96OaNxG%0Al%2BFF%0A"
echo "  9/11: return-window-duration.png"

curl -L -s -o "images/product-docs/programs/vip-tiers/tier-benefits-widget.gif" \
  "https://downloads.intercomcdn.com/i/o/1030535267/4387805c2e7b3893c9da7cd3/Screen+Recording+2024-04-24+at+2_28_31+AM.gif?expires=1770648300&signature=e2f55ec23a39cbdc85774a00b9d8145302d9667158a2687d0ca21b5aba10bd31&req=dSAkFsx9mINZXvMW1HO4zf7lEaOkVUgH0RV4gzdph%2F9g7Mwj0aIv5imiTQEz%0ABSSP%0A"
echo "  10/11: tier-benefits-widget.gif"

echo ""
echo "=== All downloads complete ==="
echo ""
echo "=== Verifying all files ==="

# Verify all files exist and have non-zero size
find images/product-docs/programs/ -type f \( -name "*.png" -o -name "*.gif" \) -exec sh -c 'size=$(wc -c < "$1"); if [ "$size" -gt 0 ]; then echo "OK ($size bytes): $1"; else echo "EMPTY: $1"; fi' _ {} \;

echo ""
echo "=== Done ==="
